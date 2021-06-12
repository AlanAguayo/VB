import 'package:flutter/material.dart';
import 'package:pracitca2/screens/dashboard_screen.dart';
import 'package:pracitca2/screens/login_screen.dart';
import 'package:pracitca2/screens/intenciones_screen.dart';
import 'package:pracitca2/screens/conversor_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Signo de interrogacion indica que la variable no es obligatoria
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return MaterialApp (Para IOS)
    return MaterialApp(
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/intenciones': (context) => IntencionesScreen(),
        '/conversor': (context) => ConversorScreen(),
      },
      home: LoginScreen(),
    );
  }
}
