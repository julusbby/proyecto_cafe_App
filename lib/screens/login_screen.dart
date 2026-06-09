import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/custom_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usuarioController = TextEditingController();
  final passwordController = TextEditingController();

  bool ocultarPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //IMAGEN
              Image.asset(
                'assets/images/logo.png',
                height: 180,
                errorBuilder: (context, error, stackTrace) {
                  return Text(error.toString());
                },
              ),
              const SizedBox(height: 30),
              //TEXTTO BIENVENIDO
              const Text(
                "Bienvenido",
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.crema,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //TEXTOO INICIAR
              Text(
                "Inicia sesión para continuar",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(height: 30),
              //USUARIO
              TextField(
                controller: usuarioController,
                decoration: InputDecoration(
                  hintText: "Usuario",
                  prefixIcon: Icon(Icons.person_outline),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.08),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              //CONTRASEÑA
              TextField(
                controller: passwordController,
                obscureText: ocultarPassword,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  prefixIcon: Icon(Icons.lock_outline),
                  //ojo
                  suffixIcon: IconButton(
                    icon: Icon(
                      ocultarPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        ocultarPassword = !ocultarPassword;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.08),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              //TEXTO OLVIDAR
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(color: AppColors.crema),
                ),
              ),
              //BOTON INGRESAS
              SizedBox(height: 20),
              CustomButton(
                text: "Ingresar",
                onPressed: () {
                  if (usuarioController.text.trim().isEmpty ||
                      passwordController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Debes ingresar usuario y contraseña"),
                      ),
                    );
                    return;
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomeScreen(nombreUsuario: usuarioController.text),
                    ),
                  );
                },
              ),
              //BOTON REGISTRAR
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿No tienes cuenta?",
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextButton(onPressed: () {}, child: Text("Registrate")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
