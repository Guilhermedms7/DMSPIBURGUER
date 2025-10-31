import 'package:flutter/material.dart';
import 'package:piburguer/components/my_button.dart';
import 'package:piburguer/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
              /* Logo opcao 1
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              */

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
                "Vamos criar uma conta",
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

              const SizedBox(height: 10),

// confirme Senha TextField
              MyTextField(
                controller: confirmpasswordController,
                hintText: "Confirme a senha",
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // Botão de login
              MyButton(
                text: "Inscrever-se",
                onTap: () {},
              ),

              const SizedBox(height: 20),

              // already have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Já tem uma conta?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Faça login agora",
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
