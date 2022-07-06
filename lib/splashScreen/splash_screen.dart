import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:seller_app/authontication/auth_screen.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  startTimer()
  {
    Timer(const Duration(seconds: 6), () async{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AuthScreen()));
    });
  }
  void initState()
  {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('Assets/animation/splash_screen.json'),
            SizedBox(height:20),
            Padding(padding: EdgeInsets.all(20),
            child: Text('Sell Food Online',
            textAlign: TextAlign.center,
            style: GoogleFonts.knewave(
              color: const Color(0xffff4500),
              fontSize: 40
            ),
            ),
            ),
            const SizedBox(height: 120,),
            Padding(padding: const EdgeInsets.only(right: 18,left: 18),
            child: Text('A.A Production',
            style: GoogleFonts.knewave(
              color: Colors.grey,
              fontSize: 20
            ),
            ),
            ),
            Padding(padding: const EdgeInsets.only(right: 18,left: 18),
              child: Text('We can serve you better',
                  style:GoogleFonts.tangerine(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                  ,),
            )
          ],
        ),
      ),
    );
  }
}
