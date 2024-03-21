import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de pantalla
          Positioned.fill(
            child: Image.asset(
              'assets/image/descargar-_7_.jpg', // Ruta de la imagen de fondo
              fit: BoxFit.cover,
            ),
          ),
          // Botón de volver en la esquina superior izquierda
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, 'Home');
              },
            ),
          ),
          // Título "BOOK SHARE"
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                'Empresas STARKS',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
          const SizedBox(height: 200),
                Center(
                  child: Image.network(
                    'https://media.istockphoto.com/id/1308342065/es/vector/mapa-de-ubicaci%C3%B3n-doblado-con-marcador-mapa-de-la-ciudad-con-puntero-pin-mapa-de-navegaci%C3%B3n.jpg?s=612x612&w=0&k=20&c=WJDCd2E3XInstZgw0jk-5k3GHYibObrxJnYxZBvwstk=', // URL de tu imagen
                    width: 200,
                    height: 100,
                  ),
                ),

          // Inputs con imágenes
          Positioned(
            top: MediaQuery.of(context).size.height * 0.60,
            left: 20,
            right: 20,
            child: Column(
              children: [
                // Input Usuario
                _buildInputWithImage('Usuario', Icons.person),
                const SizedBox(height: 20),
                // Input Correo
                _buildInputWithImage('Correo', Icons.email),
                const SizedBox(height: 20),
                // Input Contraseña
                _buildInputWithImage('Contraseña', Icons.lock),
              ],
            ),
          ),
          // Botón "REGISTRARSE"
         
          // Texto "Ya tienes cuenta? Inicia sesión"
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: 20,
            right: 20,
            child: const Center(
              
            ),
          ),
          // Botones con imágenes
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botón 1
                _buildButtonWithImage('image/facebook.png'),
                // Botón 2
                _buildButtonWithImage('image/google.png'),
              ],
            ),
          ),
          // Pie de página
          const Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Center(
              
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputWithImage(String hintText, IconData iconData) {
    return Row(
      children: [
        // Icono a la izquierda del input
        Icon(iconData),
        const SizedBox(width: 10),
        // Input
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonWithImage(String imagePath) {
    return ElevatedButton(
      onPressed: () {
        // Acción al presionar el botón
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          imagePath, // Ruta de la imagen del botón
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Registro(),
  ));
}
