import 'package:flutter/material.dart';
import 'package:pantalla_carga/pantalla_login.dart';
import 'pantalla_menu.dart';
import 'pantalla_registro.dart';

class Pantalla_Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Menu> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: Color.fromARGB(255, 216, 80, 39),
            gradient: LinearGradient(
              colors: [
                (Color.fromARGB(255, 206, 90, 49)),
                Color.fromARGB(255, 206, 90, 49)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "../images/logo.png",
                  height: 90,
                  width: 90,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Bienvenido Usuario",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "../images/imagen_inicio.png",
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Quieres Cerrar Sesion Usuario",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
            ],
          )),
        ),
        GestureDetector(
            //  onTap: () {
            // Write Click Listener Code Here.
            // },
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              (Color.fromARGB(255, 206, 90, 49)),
              Color.fromARGB(255, 206, 90, 49)
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: GestureDetector(
              child: const Text(
                "Cerrar Sesion",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Write Tap Code Here.
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PantallaLogin(),
                    ));
              }),
        )),      
      ],
    )));
  }
}


