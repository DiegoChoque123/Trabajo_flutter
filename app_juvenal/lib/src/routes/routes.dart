
import 'package:app_juvenal/src/pages/Home.dart';
import 'package:app_juvenal/src/pages/Login.dart';
import 'package:app_juvenal/src/pages/Registro.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder > rutas = {
  'Home' : (context) => const Home(),
  'Login' : (context) => const Login(),
  'Registro' : (context) => const Registro(),
};