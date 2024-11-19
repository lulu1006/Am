import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )); // MaterialApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Theming and Styling'),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            Image.network(
              'https://img.gaadicdn.com/images/carexteriorimages/930x620/Mahindra/Thar/10745/1697697308167/front-left-side-47.jpg',
              height: 250,
              width: 250,
            ) 
      ), // Center
    ); // Scaffold
  }
}
