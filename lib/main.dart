import 'package:flutter/material.dart';
import 'package:pantalla_carga/pantalla_inicio.dart';

void main() {
  runApp(MyApp());  
}
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pantalla_Inicio(),      
    );
  }
}