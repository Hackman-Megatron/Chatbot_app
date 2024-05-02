import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 255, 89)
              ],
              begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: const Column(
          children: [
            SizedBox(height: 50,),

            SizedBox(height: 50,),
            SpinKitCubeGrid(
              color: Colors.white,
            ),
            SizedBox(height: 50,),

            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
