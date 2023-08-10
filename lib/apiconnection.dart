import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiConnection {
  static Future<Map> getProduct() async {
    String url1 = "https://catfact.ninja/fact";
    var response = await http.get(Uri.parse(url1));
    if (response.statusCode == 200) {
      // setState(() {
      print(response.body);
      return json.decode(response.body);
      // });
    } else {
      return {"fact": "no data", "length": 143};
    }
  }
}
