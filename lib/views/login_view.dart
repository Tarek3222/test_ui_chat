// ignore_for_file: deprecated_member_use

import 'package:chat_ui/views/chats_view.dart';
import 'package:chat_ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff152026),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 130),
              const Icon(
                Icons.chat_outlined,
                size: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 25),
              CustomTextField(hintText: 'Enter email', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'Enter password',
                icon: Icons.lock,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    ChatsView(),
                    transition: Transition.zoom,
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size(305, 50)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              const SizedBox(height: 130),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    minimumSize: const Size(300, 50),
                    side: const BorderSide(color: Colors.blue)),
                child: const Text(
                  'Create new account',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('∞ ', style: TextStyle(color: Colors.blue)),
                  Text('Meta', style: TextStyle(color: Colors.blue)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
