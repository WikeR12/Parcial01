import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParcialETPS3-2521642018',
      home: frm(),
    );
  }
}

class frm extends StatefulWidget {
  frm({Key? key}) : super(key: key);

  @override
  State<frm> createState() => _frmState();
}

class _frmState extends State<frm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[pantalla()],
    ));
  }
}

Widget pantalla() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image:
                NetworkImage("https://wallpaperaccess.com/full/1782490.jpg"))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          titulo(),
          alumno1(),
          alumno2(),
          SizedBox(
            height: 5,
          ),
          Carnet(),
          Nombre(),
          Apellido(),
          Ubicacion(),
          Password(),
          Repassword(),
          Correo(),
          SizedBox(
            height: 5,
          ),
          botonIngresar(),
          SizedBox(
            height: 5,
          ),
          botonCancelar()
        ],
      ),
    ),
  );
}

Widget titulo() {
  return Text("Parcial I - ETPS3!",
      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30.0));
}

Widget alumno1() {
  return Text("Erick - 2521642018",
      style:
          TextStyle(color: Color.fromARGB(255, 120, 120, 120), fontSize: 15.0));
}
Widget alumno2() {
  return Text("Michael - 2513492018",
      style:
          TextStyle(color: Color.fromARGB(255, 120, 120, 120), fontSize: 15.0));
}

Widget Carnet() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.assignment_turned_in_rounded),
          hintText: "Ingrese su carnet",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Nombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_box),
          hintText: "Ingrese su nombre",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Apellido() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_box),
          hintText: "Ingrese su apellido",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Ubicacion() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      maxLines: 20,
      decoration: InputDecoration(
          icon: Icon(Icons.gps_fixed_outlined),
          hintText: "Ingrese su direccion",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: "Ingrese su contraseña",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Repassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.security),
          hintText: "Confirme su contraseña",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget Correo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: "Ingrese su correo",
          fillColor: Color.fromARGB(112, 202, 68, 24),
          filled: true),
    ),
  );
}

Widget botonIngresar() {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 105, vertical: 10),
      onPressed: () {},
      child: Text(
        "Ingresar",
        style:
            TextStyle(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255)),
      ));
}

Widget botonCancelar() {
  return FlatButton(
      color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 105, vertical: 10),
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 14, 14)),
      ));
}