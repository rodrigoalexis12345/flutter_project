import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String lastName;
  final String dni;
  final String address;
  final String workDays;
  final String jobPosition;
  final String imagePath;

  Employee({
    required this.name,
    required this.lastName,
    required this.dni,
    required this.address,
    required this.workDays,
    required this.jobPosition,
    required this.imagePath,
  });
}

class EmployeeListPage extends StatelessWidget {
  final List<Employee> employees = [
    Employee(
      name: 'Juan',
      lastName: 'Pérez',
      dni: '12345678',
      address: 'Calle Falsa 123',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Desarrollador',
      imagePath: 'assets/e9.jpg',
    ),
    Employee(
      name: 'Jose',
      lastName: 'González',
      dni: '87654321',
      address: 'Avenida Siempre Viva 742',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Diseñador',
      imagePath: 'assets/e1.jpeg',
    ),
    Employee(
      name: 'Ana',
      lastName: 'Martínez',
      dni: '56781234',
      address: 'Boulevard de los Sueños Rotos 1',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Gerente',
      imagePath: 'assets/e2.jpeg',
    ),
    Employee(
      name: 'Carlos',
      lastName: 'Sánchez',
      dni: '34567812',
      address: 'Paseo de la Reforma 500',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Administrador',
      imagePath: 'assets/e3.jpeg',
    ),
    Employee(
      name: 'Luiz',
      lastName: 'Ramírez',
      dni: '23456781',
      address: 'Plaza Mayor 10',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Recursos Humanos',
      imagePath: 'assets/e4.jpeg',
    ),
    Employee(
      name: 'Elena',
      lastName: 'López',
      dni: '56781234',
      address: 'Calle del Sol 33',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Marketing',
      imagePath: 'assets/e5.jpeg',
    ),
    Employee(
      name: 'Lucia',
      lastName: 'Moreno',
      dni: '12348765',
      address: 'Avenida Libertador 98',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Ventas',
      imagePath: 'assets/e6.jpeg',
    ),
    Employee(
      name: 'Antony',
      lastName: 'Ortiz',
      dni: '43215678',
      address: 'Calle de la Paz 22',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Soporte Técnico',
      imagePath: 'assets/e7.jpg',
    ),
    Employee(
      name: 'Pedro',
      lastName: 'Díaz',
      dni: '87651234',
      address: 'Calle Luna 1',
      workDays: 'Lunes a Viernes',
      jobPosition: 'Contador',
      imagePath: 'assets/e8.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LISTA DE EMPLEADOS'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmployeeDetailPage(employee: employee),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Colors.grey[200],
                child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  child: Image.asset(employee.imagePath),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class EmployeeDetailPage extends StatelessWidget {
  final Employee employee;

  EmployeeDetailPage({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Empleado'),
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
                    child: Image.asset(employee.imagePath),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nombre: ${employee.name} ${employee.lastName}',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'DNI: ${employee.dni}',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Dirección: ${employee.address}',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Días de trabajo: ${employee.workDays}',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Puesto de trabajo: ${employee.jobPosition}',
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
