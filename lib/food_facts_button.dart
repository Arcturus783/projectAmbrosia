import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//import 'food.dart' as food;
import 'newDB.dart' as newFood;
//import 'dart:async';

class FoodFactsButton extends StatefulWidget {
  const FoodFactsButton({super.key});

  @override
  _FoodFactsButtonState createState() => _FoodFactsButtonState();
}

class _FoodFactsButtonState extends State<FoodFactsButton> {
  List<String> _products = [];
  //String get thing => item;

  void getPrompt() async {
    try {
      final response = await newFood.searchProduct('apple');
      setState(() {
        _products = response;
      });
    } catch (e) {
      setState(() {
        _products = ['Error: ${e.toString()}'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          onPressed: getPrompt,
          child: const Text('Get Food Facts'),
        ),
        const SizedBox(height: 10),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _products.map((product) => Text(product)).toList(),
            ),
          ),
        )
      ],
    );
  }
}
