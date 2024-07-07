import 'package:flutter/material.dart';
import 'package:flutter_aplicaciondeasistencias/src/admin_perfil.dart';
import 'package:flutter_aplicaciondeasistencias/src/lista_empleados.dart';
import 'package:flutter_aplicaciondeasistencias/src/login_admin.dart';
import 'package:flutter_aplicaciondeasistencias/src/login_e.dart';
import 'package:flutter_aplicaciondeasistencias/src/perfil_e.dart';

import 'src/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // Para Borrar el Debug

      //Señalamos la ruta inicial
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'login1': (BuildContext context) => LoginPage1(),
        'lista_empleados': (BuildContext context) => EmployeeListPage(),
        'perfiladmin': (BuildContext context) => AdminWelcomeScreen(),
        'perfil': (BuildContext context) => Empleado(
            name: 'Juan ',
            lastName: 'Perez',
            dni: '12345678',
            address: 'Calle Falza 123',
            workDays: 'Lunes a Viernes',
            jobPosition: 'Desarrolador',
            imagePath: 'assets/e9.jpg',
            ).mostrarPerfil(),
      },
    );
  }
}
