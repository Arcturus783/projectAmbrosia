
/*
import 'dart:async';

import 'package:openfoodfacts/openfoodfacts.dart';

/// request a product from the OpenFoodFacts database
Future<String?> getProduct() async {
  OpenFoodAPIConfiguration.userAgent = UserAgent(name: 'Project Ambrosia');

  OpenFoodAPIConfiguration.globalLanguages = <OpenFoodFactsLanguage>[
    OpenFoodFactsLanguage.ENGLISH
  ];

  OpenFoodAPIConfiguration.globalCountry = OpenFoodFactsCountry.USA;


/* DO NOT DELETE
  final searchTerm = "lays potato chips";
  ProductSearchQueryConfiguration config = ProductSearchQueryConfiguration(
    parametersList: <Parameter>[
      SearchTerms(terms: ["lays potato chips"]),
    ],
    version: ProductQueryVersion.v3,
    language: OpenFoodFactsLanguage.ENGLISH,
  );

  final products = await OpenFoodAPIClient.searchProducts(
    
  );
*/





  
  var barcode = '0048151623426';

  final ProductQueryConfiguration configuration = ProductQueryConfiguration(
    barcode,
    language: OpenFoodFactsLanguage.ENGLISH,
    fields: [ProductField.ALL],
    version: ProductQueryVersion.v3,
  );
  ProductResultV3 result = await OpenFoodAPIClient.getProductV3(configuration);


  if (result.status == ProductResultV3.statusSuccess) {
    return result.product?.brands;
  } else {
    throw Exception('product not found, please insert data for $barcode');
  }

}
*/