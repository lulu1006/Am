import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); // Fixed: Correct class name in the constructor.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOfTimesTapped = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped $numberOfTimesTapped times', // Fixed: String interpolation for cleaner code.
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  numberOfTimesTapped++;
                });
              },
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.green[200],
                child: Text(
                  'TAP HERE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
