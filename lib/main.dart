import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result = 0; // Declare result as a member variable

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          title: Text(
            "Currency converter",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            children: [
              Text(
                "$result",
                style: TextStyle(
                  backgroundColor: Colors.lightBlueAccent,
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the amount of money to convert in INR',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.cyanAccent,
                ),
                keyboardType: TextInputType.number,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                    textEditingController.clear();
                  });
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 30),
                  backgroundColor: Colors.lightBlueAccent,
                ),
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

