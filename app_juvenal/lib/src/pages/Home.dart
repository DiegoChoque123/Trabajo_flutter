import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/descargar-_7_.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 50), // Espacio en blanco para subir el título
                const Text(
                  'Empresas',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'STARKS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'INICIA SESIÓN PARA ACCEDER A LA PLATAFORMA PRINCIPAL',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Login');
                      },
                      child: const Text('Iniciar'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Registro');
                      },
                      child: const Text('Registrarse'),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              '2024 - JUNÍN CHANCHAMAYO PICHANAKI',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
