import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nombreCafe = "Espresso";
  String imagenCafe = "assets/images/Espresso.png";
  String descripcionCafe =
      "Café intenso y aromático preparado mediante extracción rápida.";
  String precioCafe = "\$6.000";

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nombreCafe = "Espresso";
                      imagenCafe = "assets/images/Espresso.png";
                      descripcionCafe =
                          "Café intenso y aromático preparado mediante extracción rápida.";
                      precioCafe = "\$6.000";
                    });
                  },
                  child: Text("Espresso"),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nombreCafe = "Capuccino";
                      imagenCafe = "assets/images/Capuccino.png";
                      descripcionCafe =
                          "Mezcla equilibrada de espresso, leche vaporizada y espuma.";
                      precioCafe = "\$8.000";
                    });
                  },
                  child: Text("Capuccino"),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nombreCafe = "Latte";
                      imagenCafe = "assets/images/Latte.png";
                      descripcionCafe =
                          "Bebida suave con espresso y abundante leche vaporizada.";
                      precioCafe = "\$9.000";
                    });
                  },
                  child: Text("Latte"),
                ),
              ],
            ),

            SizedBox(height: 25),

            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                imagenCafe,
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            Text(
              nombreCafe,
              style: TextStyle(
                color: AppColors.crema,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              descripcionCafe,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.access_time, color: AppColors.crema),

                SizedBox(width: 5),

                Text(
                  "5 min",
                  style: TextStyle(color: AppColors.crema, fontSize: 18),
                ),

                SizedBox(width: 40),

                Text(
                  precioCafe,
                  style: TextStyle(
                    color: AppColors.crema,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
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
