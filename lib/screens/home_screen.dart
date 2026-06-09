import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  final String nombreUsuario;

  const HomeScreen({super.key, required this.nombreUsuario});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nombreCafe = "Espresso";
  String imagenCafe = "assets/images/Espresso.png";
  String descripcionCafe =
      "Café intenso y aromático preparado mediante extracción rápida.";
  String precioCafe = "\$6.000";
  String tiempoCafe = "5 min";
  String cafeSeleccionado = "Espresso";
  bool esFavorito = false;
  bool menuAbierto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cafeOscuro,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "¡Hola, ${widget.nombreUsuario}!",
          style: TextStyle(color: AppColors.crema, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.crema,
              child: Icon(Icons.person, color: AppColors.cafeOscuro),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nombreCafe = "Espresso";
                              imagenCafe = "assets/images/Espresso.png";
                              descripcionCafe =
                                  "Café intenso y aromático preparado mediante extracción rápida.";
                              precioCafe = "\$6.000";
                              tiempoCafe = "5 min";
                              cafeSeleccionado = "Espresso";
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.coffee, size: 18),
                              SizedBox(width: 6),
                              Text("Espresso"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: cafeSeleccionado == "Espresso"
                                ? AppColors.crema
                                : Colors.grey.shade800,
                            foregroundColor: cafeSeleccionado == "Espresso"
                                ? AppColors.cafeOscuro
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nombreCafe = "Capuccino";
                              imagenCafe = "assets/images/Capuccino.png";
                              descripcionCafe =
                                  "Mezcla equilibrada de espresso, leche vaporizada y espuma.";
                              precioCafe = "\$8.000";
                              tiempoCafe = "7 min";
                              cafeSeleccionado = "Capuccino";
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.local_cafe, size: 18),
                              SizedBox(width: 6),
                              Text("Capuccino"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: cafeSeleccionado == "Capuccino"
                                ? AppColors.crema
                                : Colors.grey.shade800,
                            foregroundColor: cafeSeleccionado == "Capuccino"
                                ? AppColors.cafeOscuro
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),

                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nombreCafe = "Latte";
                              imagenCafe = "assets/images/Latte.png";
                              descripcionCafe =
                                  "Bebida suave con espresso y abundante leche vaporizada.";
                              precioCafe = "\$9.000";
                              tiempoCafe = "6 min";
                              cafeSeleccionado = "Latte";
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.coffee_maker, size: 18),
                              SizedBox(width: 6),
                              Text("Latte"),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: cafeSeleccionado == "Latte"
                                ? AppColors.crema
                                : Colors.grey.shade800,
                            foregroundColor: cafeSeleccionado == "Latte"
                                ? AppColors.cafeOscuro
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        imagenCafe,
                        height: 280,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nombreCafe,
                        style: TextStyle(
                          color: AppColors.crema,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            esFavorito = !esFavorito;
                          });
                        },
                        icon: Icon(
                          esFavorito ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ],
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
                        tiempoCafe,
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
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (menuAbierto) ...[
            FloatingActionButton.small(
              heroTag: "carrito",
              backgroundColor: AppColors.crema,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$nombreCafe agregado al carrito ☕"),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: const Icon(
                Icons.shopping_cart,
                color: AppColors.cafeOscuro,
              ),
            ),

            const SizedBox(height: 10),

            FloatingActionButton.small(
              heroTag: "favoritos",
              backgroundColor: AppColors.crema,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      esFavorito
                          ? "$nombreCafe está en favoritos ❤️"
                          : "$nombreCafe no está en favoritos 🤍",
                    ),
                  ),
                );
              },
              child: const Icon(Icons.favorite, color: Colors.red),
            ),

            const SizedBox(height: 10),

            FloatingActionButton.small(
              heroTag: "info",
              backgroundColor: AppColors.crema,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: AppColors.cafeOscuro,
                      title: Text(
                        nombreCafe,
                        style: const TextStyle(color: AppColors.crema),
                      ),
                      content: Text(
                        descripcionCafe,
                        style: const TextStyle(color: Colors.white70),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cerrar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(Icons.info, color: AppColors.cafeOscuro),
            ),

            const SizedBox(height: 10),
          ],

          FloatingActionButton(
            backgroundColor: AppColors.crema,
            onPressed: () {
              setState(() {
                menuAbierto = !menuAbierto;
              });
            },
            child: Icon(
              menuAbierto ? Icons.close : Icons.add,
              color: AppColors.cafeOscuro,
            ),
          ),
        ],
      ),
    );
  }
}
