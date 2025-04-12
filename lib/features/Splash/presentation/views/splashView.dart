// to monitor whether the user show the onBoarding or not =>using

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mossef_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_textStyles.dart';
import '../../../../core/functions/delayedNavigate.dart';




class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashScreenState();
} // Structure class of the statefulWidget of splashScreen

class _SplashScreenState extends State<SplashView> {

  @override
  void initState() {
    delayedNavigate(context);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Text(
          AppString.appName,
          style: CustomTextStyle.poppins,
      )
      )
    );
  }
}









/*  Alternative splash ascreen
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
)

 */