import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

String nombreCafe = "Expresso";
String imagenCafe = "lib/assets/images/espresso.png";
String descripcionCafe =
    "Café intenso y aromático, preparado con agua caliente y granos de café finamente molidos.";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nombreCafe = "Expresso";
  String imagenCafe = "lib/assets/images/espresso.png";
  String descripcionCafe =
      "Café intenso y aromático, preparado con agua caliente y granos de café finamente molidos.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cafeOscuro,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("¡Hola, Usuario!"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(child: Icon(Icons.person)),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Pantalla principal",
          style: TextStyle(color: AppColors.crema, fontSize: 24),
        ),
      ),
    );
  }
}
