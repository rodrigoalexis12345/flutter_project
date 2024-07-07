import 'package:flutter/material.dart';

class Empleado {
  final String name;
  final String lastName;
  final String dni;
  final String address;
  final String workDays;
  final String jobPosition;
  final String imagePath;

  Empleado({
    required this.name,
    required this.lastName,
    required this.dni,
    required this.address,
    required this.workDays,
    required this.jobPosition,
    required this.imagePath,
  });

  Widget mostrarPerfil() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil del Empleado'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.grey[200],
                  child: FittedBox(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    child: Image.asset(imagePath),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nombre: $name $lastName',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'DNI: $dni',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Dirección: $address',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Días de trabajo: $workDays',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Puesto de trabajo: $jobPosition',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
