import 'package:flutter/material.dart';
import 'package:loginandregister/Screens/login.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.5 - 75,
            child: Image.asset(
              'assets/images/logologin.png',
              width: 150,
              height: 150,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Usuario',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Repetir contraseña',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica de registro
                    },
                    child: Text('Registrarse'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 16.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      // Navegar al login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('¿Ya tienes una cuenta? Inicia sesión'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
