import 'package:flutter/material.dart';

class LoginByMails extends StatefulWidget {
  const LoginByMails({super.key});

  @override
  State<LoginByMails> createState() => _LoginByMailsState();
}

class _LoginByMailsState extends State<LoginByMails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('with gmail'),
          Text("with Apple")
        ],
      ),
    );
  }
}
