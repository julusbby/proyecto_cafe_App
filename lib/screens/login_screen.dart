import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/images/logo.png',
                height: 180,
                errorBuilder: (context, error, stackTrace) {
                  return Text(error.toString());
                },
              ),
              const SizedBox(height: 30),
              const Text(
                "Bienvenido",
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.crema,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
