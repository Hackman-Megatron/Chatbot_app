import 'package:chatbot/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginByMails extends StatefulWidget {
  const LoginByMails({super.key});

  @override
  State<LoginByMails> createState() => _LoginByMailsState();
}

class _LoginByMailsState extends State<LoginByMails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 255, 89),
                Color.fromARGB(255, 0, 0, 0),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtsForSignUp(
                logoPath: "assets/logos/google-logo.png",
                texting: "Sign Up With Google",
            ),
            ButtsForSignUp(
                logoPath: "assets/logos/Apple_logo.png",
                texting: "Sign Up With Apple"
            )
          ],
        ),
      ),
    );
  }
}
