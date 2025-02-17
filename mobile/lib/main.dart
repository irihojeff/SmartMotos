import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String apiMessage = "Loading...";

  @override
  void initState() {
    super.initState();
    fetchApiMessage();
  }

  Future<void> fetchApiMessage() async {
    try {
      final response = await http.get(Uri.parse('http://10.0.2.2:3000/api/test'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          apiMessage = data['message'];
        });
      } else {
        setState(() {
          apiMessage = "Failed to fetch API";
        });
      }
    } catch (e) {
      setState(() {
        apiMessage = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("API Test")),
        body: Center(
          child: Text(apiMessage, style: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
