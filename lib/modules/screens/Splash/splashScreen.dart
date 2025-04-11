// to monitor whether the user show the onBoarding or not =>using

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mossef_app/modules/screens/OnBoarding/onBoardingScreen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
} // Structure class of the statefulWidget of splashScreen

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () { //navigate to the next screen after 3 seconds
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>  OnBoardingScreen()),
      );
    });
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:Center(
                child:SizedBox(
                  width: 100,
                  height: 100,
                 child: Image.asset('assets/images/logo1.jpg', width: 150),) ,
            )),

            SizedBox(height: 20),
            CircularProgressIndicator(),
            Text( 'Mossef',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}