// ignore_for_file: prefer_const_constructors

import 'package:app_juvenal/src/widgets/usuarioinput.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, 'Home');
          },
        ),
        title: const Text('BOOK SHARE'),
        centerTitle: true,
        
        
      ),
      
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/image/descargar-_7_.jpg"), // Ruta de la imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(width: 20),
                
                const Text(
                  'Empresas STARKS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Center(
                  child: Image.network(
                    'https://media.istockphoto.com/id/1308342065/es/vector/mapa-de-ubicaci%C3%B3n-doblado-con-marcador-mapa-de-la-ciudad-con-puntero-pin-mapa-de-navegaci%C3%B3n.jpg?s=612x612&w=0&k=20&c=WJDCd2E3XInstZgw0jk-5k3GHYibObrxJnYxZBvwstk=', // URL de tu imagen
                    width: 200,
                    height: 100,
                  ),
                ),

                usuarioinput(),

                                
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('image/cerrar-con-llave.png',
                        width: 50, height: 40),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('image/cerrar-con-llave.png',
                        width: 50, height: 40),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Nro De Seguimiento',
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 10, 144, 233),
                  ),
                  child: const Text('SIGUIENTE'),
                ),

                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    '¿Aún no tienes cuenta?',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                

                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Registro');
                  },
                  child: Text(
                    'Regístrate',
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                const SizedBox(height: 20),
               
                const SizedBox(height: 50), // Espacio para el pie de página
              ],
            ),
          ),
        ),
      ),
    );
  }
}
