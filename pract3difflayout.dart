import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(Demoapp()); 
} 
 
class Demoapp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
        title: 'My Application', 
        debugShowCheckedModeBanner: true, 
        home: Scaffold( 
            body: Padding( 
                padding: const EdgeInsets.all(20.0), 
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [ 
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [ 
                        Container(height: 100, width: 100, color: Colors.teal,), 
                        Container( 
                            height: 100, width: 100, color: Colors.teal[600]), 
                        Container( 
                            height: 100, width: 100, color: Colors.teal[900]), 
                      ], 
                    ), 
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [ 
                        Container( 
                          height: 100, width: 100, color: Colors.amberAccent,), 
                        Container(height: 100, 
                            width: 100, 
color: Colors.amberAccent[100]), 
Container(height: 100, 
width: 100, 
color: Colors.amberAccent[200]), 
], 
) 
], 
) 
) 
) 
); 
} 
}