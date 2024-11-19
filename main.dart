 
import 'package:flutter/material.dart'; 
 
void main() { 
   runApp(MaterialApp( 
     home:MyApp(), 
   )); //MaterialApp 
} 
 
class MyApp extends StatelessWidget { 
   const MyApp({Key? key}) : super(key: key); 
 
   @override 
   Widget build(BuildContext context){ 
     TextEditingController name = TextEditingController(); 
     TextEditingController id = TextEditingController(); 
     TextEditingController semester = TextEditingController(); 
     TextEditingController dept = TextEditingController(); 
     TextEditingController city = TextEditingController(); 
     return Scaffold( 
        appBar: AppBar( 
         title: Text("User Info"), 
          centerTitle: true, 
     ), 
     body: Column( 
      children: [ 
       SizedBox(height: 10), 
       TextField( 
       controller: name, 
       decoration: InputDecoration( 
        labelText: " Enter your name", 
        border: OutlineInputBorder( 
        borderRadius: BorderRadius.circular(15), 
   ) 
  ), 
 ),
 
 SizedBox(height: 10), 
    TextField(  
  controller: id,
  decoration: InputDecoration( 
     labelText: " Enter your ID", 
     border: OutlineInputBorder( 
   borderRadius: BorderRadius.circular(15) 
   ) 
  ), 
 ), 
  
 SizedBox(height: 10), 
    TextField( 
  controller: semester, 
  decoration: InputDecoration( 
     labelText: " Enter your Semester", 
     border: OutlineInputBorder( 
   borderRadius: BorderRadius.circular(15) 
   ) 
  ), 
 ),
 
 SizedBox(height: 10), 
    TextField( 
  controller: dept, 
  decoration: InputDecoration( 
     labelText: " Enter your Department", 
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15)
     )
  ),
    ), 
    SizedBox(height: 10,),
    TextField(
      controller: city,
      decoration: InputDecoration(
        labelText: "enter your city",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        )
      ),
    ),
    SizedBox(height: 10),
    ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>NextScreen( 
  name: name.text, 
  id: id.text, 
  semester: semester.text, 
  dept: dept.text, 
  city: city.text, 
  ))).whenComplete(() => {
  name.clear(), 
  id.clear(), 
  semester.clear(), 
  dept.clear(), 
  city.clear() 
  }); 
 }, child: Text("continue")) 
     ], 
   ),
  ); 
 } 
} 
 
class NextScreen extends StatelessWidget { 
   String? name, id, semester, dept, city; 
   NextScreen({ 
 this.name, this.id, this.semester, this.dept, this.city
   });
   @override 
 Widget build(BuildContext context) { 
   return Scaffold( 
 body: Column( 
   children: [ 
  Text("Name:" +name.toString()), 
   Text("Id:" +id.toString()), 
  Text("Semester:" +semester.toString()), 
  Text("Department:" +name.toString()), 
  Text("City:" +city.toString()),
   ],
 ),
   );
 }
}