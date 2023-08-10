import 'dart:convert';

import 'package:fakeapi/apiConnection.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Fakeapi()));
}

class Fakeapi extends StatefulWidget {
  const Fakeapi({super.key});

  @override
  State<Fakeapi> createState() => _FakeapiState();
}

class _FakeapiState extends State<Fakeapi> {
  Map product = {};

  // getProduct() async {
  //   String url1 = "https://fakestoreapi.com/products";
  //   var response = await http.get(Uri.parse(url1));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       product = json.decode(response.body);
  //     });
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Practice"),
        actions: [
          IconButton(
              onPressed: () async {
                product = await ApiConnection.getProduct();
                setState(() {});
                // getProduct();
              },
              icon: const Icon(Icons.search))
        ],
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            width: 400,
            child: Text("${product["fact"]}"),
          )
        ],
      ),
    );
  }
}
