import 'package:flutter/material.dart';

Container usuarioinput() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black, // Color del borde
        width: 1.0, // Ancho del borde
      ),
      borderRadius: BorderRadius.circular(10), // Radio de borde
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10), // Espacio interno
    child: Row(
      children: [
        Image.asset('image/perfil.png', width: 50, height: 50),
        const SizedBox(width: 10),
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Usuario',
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              border: InputBorder.none, // Quitar el borde del campo de texto
            ),
          ),
        ),
      ],
    ),
  );
}
