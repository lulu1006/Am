import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  String result = "Result: 0";

  void calculate(String operation) {
    int num1 = int.tryParse(controller1.text) ?? 0;
    int num2 = int.tryParse(controller2.text) ?? 0;

    setState(() {
      switch (operation) {
        case '+':
          result = 'Result: ${num1 + num2}';
          break;
        case '-':
          result = 'Result: ${num1 - num2}';
          break;
        case '*':
          result = 'Result: ${num1 * num2}';
          break;
        case '/':
          result = num2 == 0 ? 'Error: Division by zero' : 'Result: ${num1 ~/ num2}';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(result, style: TextStyle(fontSize: 20, color: Colors.blue.shade700)),
            SizedBox(height: 15),
            ...[controller1, controller2].map((controller) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter number",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['+', '-', '*', '/'].map((op) => ElevatedButton(
                onPressed: () => calculate(op),
                child: Text(op),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
