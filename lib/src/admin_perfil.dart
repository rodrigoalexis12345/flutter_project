import 'package:flutter/material.dart';
import 'package:flutter_aplicaciondeasistencias/src/lista_empleados.dart';

class AdminWelcomeScreen extends StatelessWidget {
  final String adminName = 'Juan Pérez'; // Nombre del administrador
  final String adminPhotoPath =
      'assets/imagen3.jpg'; // Ruta de la foto del administrador en assets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido Administrador'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage(adminPhotoPath),
              ),
              SizedBox(height: 20.0),
              Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                adminName,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmployeeListPage()),
                  );
                },
                child: Text('Lista de empleados'),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  textStyle: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
