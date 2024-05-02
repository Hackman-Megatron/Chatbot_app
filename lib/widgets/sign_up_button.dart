import 'package:chatbot/views/home_screen.dart';
import 'package:flutter/material.dart';

class ButtsForSignUp extends StatelessWidget {
  const ButtsForSignUp({super.key,
    required this.logoPath,
    required this.texting,
  });

  final String logoPath;
  final String texting;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> const HomeLand()
          )
      ),
      child: Container(
        margin: const EdgeInsets.only(
            left:75,
            right: 75,
            top: 35
        ),
        height: 65,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: const Border(
                left: BorderSide(
                    color: Colors.white
                ),
                right: BorderSide(
                    color: Colors.white
                ),
                top: BorderSide(
                    color: Colors.white
                ),
                bottom: BorderSide(
                    color: Colors.white
                )
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle
              ),
              child: Image.asset(logoPath,
              ),
            ),
            const SizedBox(width: 15,),
            Text(texting),
          ],
        ),
      ),
    );
  }
}
