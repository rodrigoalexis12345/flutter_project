import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false, // Para Borrar el Debug
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Utilizamos un Stack para superponer la imagen y el degradado
        children: [
          // Fondo degradado
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(245, 255, 255, 255),
                  Color.fromARGB(245, 57, 200, 200),
                  Color.fromARGB(255, 50, 194, 120)
                ],
              ),
            ),
          ),
          // Contenido de la aplicación
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sección de texto
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APLICACION DE ASISTENCIAS', // Texto principal
                      style: TextStyle(
                        color: const Color.fromARGB(
                            255, 232, 13, 13), // Color del texto
                        fontSize: 25, // Tamaño de la fuente
                        fontWeight: FontWeight.bold, // Peso de la fuente
                        fontFamily: 'OpenSans', // Fuente personalizada
                      ),
                    ),
                    SizedBox(height: 10), // Espacio entre textos
                    Text(
                      'Donde el control es importante', // Texto secundario
                      style: TextStyle(
                        color: const Color.fromARGB(
                            255, 20, 19, 19), // Color del texto
                        fontSize: 15, // Tamaño de la fuente
                        fontWeight: FontWeight.w500, // Peso de la fuente
                        fontFamily: 'OpenSans', // Fuente personalizada
                      ),
                    ),
                  ],
                ),
                // Espacio para centrar la imagen
                Align(
                  // Para alinear la imagen al centro verticalmente
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 200, // Altura deseada de la imagen
                    child: Image.asset(
                      'assets/fondo1.png',
                      fit: BoxFit
                          .contain, // Ajusta la imagen al tamaño del contenedor
                    ),
                  ),
                ),
                // Sección de botones
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: Text(
                        'Iniciar Sesion',
                        style: TextStyle(
                          fontFamily: 'OpenSans', // Fuente personalizada
                          fontWeight: FontWeight.w600, // Peso de la fuente
                        ),
                      ), // Texto del primer botón
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.amber, // Color de fondo del botón
                        padding: EdgeInsets.symmetric(
                            horizontal: 80, vertical: 18), // Padding del botón
                        minimumSize: Size(
                            double.infinity, 30), // Tamaño mínimo del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Bordes redondeados del botón
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Espacio entre botones
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login1');
                      },
                      child: Column(
                        children: [
                          Text(
                            'Iniciar Sesion',
                            style: TextStyle(
                              fontFamily: 'OpenSans', // Fuente personalizada
                              fontWeight: FontWeight.w600, // Peso de la fuente
                            ),
                          ),
                          Text(
                            'de Empleado',
                            style: TextStyle(
                              fontFamily: 'OpenSans', // Fuente personalizada
                              fontWeight: FontWeight.w600, // Peso de la fuente
                            ),
                          ),
                        ],
                      ), // Texto del segundo botón
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.amber, // Color de fondo del botón
                        padding: EdgeInsets.symmetric(
                            horizontal: 80, vertical: 18), // Padding del botón
                        minimumSize: Size(
                            double.infinity, 30), // Tamaño mínimo del botón
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Bordes redondeados del botón
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
