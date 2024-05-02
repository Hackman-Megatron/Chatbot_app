import 'package:chatbot/views/mails_loggers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
      Future.delayed(
          const Duration(seconds: 20),
        () {
            setState(() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const SplashScreen()
                  )
              );
            });
        }
      );
    }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ChatBot",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 100,),
            const SpinKitCubeGrid(
              color: Colors.white,
              size: 75,
            ),
            const SizedBox(height: 100,),
            Text("By The Flutter Group 12",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
