import 'package:flutter/material.dart';
import 'package:piburguer/components/my_button.dart';
import 'package:piburguer/components/my_textfield.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() {
    /*

    fill out authentication here

    */

    //navigate to home
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'lib/images/logo/raposaicon.png',
                width: 150, // Define a largura da logo
                height: 150, // Define a altura da logo
                fit: BoxFit.contain, // Ajusta como a imagem é exibida
              ),

              const SizedBox(height: 25),

              // Slogan
              Text(
                "DMS PIBURGUER",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              // Email TextField
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),

              const SizedBox(height: 10),

// Senha TextField
              MyTextField(
                controller: passwordController,
                hintText: "Senha",
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // Botão de login
              MyButton(
                text: "Entrar",
                onTap: login,
              ),

              const SizedBox(height: 20),

              // Not a member? Register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não possui conta?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Registre-se", //Registre-se agora
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
