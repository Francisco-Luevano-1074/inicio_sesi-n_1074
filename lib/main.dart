import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Killen Cafe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Fondo gris claro
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Killen Cafe',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6D4C41), // Café oscuro exacto
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'Hola, Bienvenido de nuevo...',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF6D4C41), // Café oscuro exacto
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'Ingresa tu nombre:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6D4C41), // Café oscuro exacto
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white, // Fondo blanco para los campos
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ingresa tu contraseña:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6D4C41), // Café oscuro exacto
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white, // Fondo blanco para los campos
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 20),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Lógica para iniciar sesión
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6D4C41), // Café oscuro exacto
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0, // Sin sombra para coincidir con la imagen
              ),
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿No tienes una cuenta?',
                  style: TextStyle(color: Color(0xFF6D4C41)), // Café oscuro
                ),
                TextButton(
                  onPressed: () {
                    // Navegar a pantalla de registro
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(left: 5),
                  ),
                  child: const Text(
                    'Regístrate aquí',
                    style: TextStyle(
                      color: Color(0xFF6D4C41), // Café oscuro
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}