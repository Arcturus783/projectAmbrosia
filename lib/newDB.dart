import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:oauth2/oauth2.dart' as auth;

final id = 'ef7e41160bb541b3bc551a8b76fa3606';
final secret = '7bfbf9e117a64324bad70ea90db07089';
final tokenEndpoint = Uri.parse('https://oauth.fatsecret.com/connect/token');

Future<List<String>> searchProduct(String product) async {

  try {
    var client = await auth.clientCredentialsGrant(tokenEndpoint, id, secret);
    var token = client.credentials.accessToken;
    final url = Uri.parse('https://platform.fatsecret.com/rest/server.api');
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final body = {
      'method': 'foods.autocomplete',
      'expression': product,
      'max_results': '4',
      'format': 'json',
    };

    final encodedBody = Uri(queryParameters: body).query;
    var response = await http.post(url, headers: headers, body: encodedBody);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data['suggestions'] != null &&
          data['suggestions']['suggestion'] is List) {
        final List<dynamic> suggestions = data['suggestions']['suggestion'];
        return suggestions.map((item) => item.toString()).toList();
      } else if (data['suggestions'] != null &&
          data['suggestions']['suggestion'] is String) {
        // If there's only one suggestion, it might be returned as a string
        return [data['suggestions']['suggestion']];
      } else {
        print('Unexpected data structure: $data');
        return ['No suggestions found'];
      }
    } else {
      return ['Error: ${response.statusCode}', 'Body: ${response.body}'];
    }
  } catch (e) {
    print('Exception caught: $e');
    return ['Error: ${e.toString()}'];
  }
}

Future<List<dynamic>> getFacts(product) async {
  //List<dynamic> returnStuff = [];

  try {
    var client = await auth.clientCredentialsGrant(tokenEndpoint, id, secret);
    var token = client.credentials.accessToken;
    final url = Uri.parse('https://platform.fatsecret.com/rest/server.api');

    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final body = {
      'method': 'foods.search.v3',
      'search_expression': product,
      'max_results': '1',
      'page_number': '0',
      'format': 'json',
    };

    final encodedBody = Uri(queryParameters: body).query;
    var response = await http.post(url, headers: headers, body: encodedBody);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);

      if (data['foods_search'] != null &&
          data['foods_search']['results'] != null &&
          data['foods_search']['results']['food'] is List &&
          data['foods_search']['results']['food'].isNotEmpty &&
          data['foods_search']['results']['food'][0]['servings'] != null &&
          data['foods_search']['results']['food'][0]['servings']['serving']
              is List &&
          data['foods_search']['results']['food'][0]['servings']['serving']
              .isNotEmpty) {
        var protein = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['protein'] ??
            '0.00';
        var calories = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['calories'] ??
            '0.00';
        var totalFats = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['fat'] ??
            '0.00';
        var cholesterol = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['cholesterol'] ??
            '0.00';
        var sodium = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['sodium'] ??
            '0.00';
        var addedSugars = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['added_sugars'] ??
            '0.00';
        
        var servings = data['foods_search']['results']['food'][0]['servings']
                ['serving'][0]['serving_description'] ??
            '--';
        var allergens = data['foods_search']['results']['food'][0]['food_attributes']['allergens']['allergen'].map((allergen) => allergen['name']).toList() ??
            [];
        

        return [
          protein.toString(),
          calories.toString(),
          totalFats.toString(),
          cholesterol.toString(),
          sodium.toString(),
          addedSugars.toString(),

          servings,
          allergens,
        ];
      } else {
        return ['error', 'No protein data found'];
      }
    } else {
      return [
        'error',
        'API request failed with status: ${response.statusCode}'
      ];
    }
  } catch (e) {
    return ['error', e.toString()];
  }
}


/*
- 'List' is from 'dart:core'.
Future<List<dynamic>> getFacts(product) async {
                      ^
                      */