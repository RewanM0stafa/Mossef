import 'package:flutter/material.dart';
import 'package:mossef_app/modules/screens/Login/otpVerification.dart';
import 'package:mossef_app/modules/screens/OnBoarding/onBoardingManager.dart';
import 'package:mossef_app/modules/screens/OnBoarding/onBoardingScreen.dart';
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = OnBoardingManager();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Placeholder(fallbackHeight: 80), // مكان لصورة اللوجو
              SizedBox(height: 20),
              Text(
                "Forget password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Enter your email to reset the password",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Container(
                height: 180,
                child: Placeholder(), // for illustration
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerificationPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingPage(
                    title: manager.pages[manager.pages.length-1]['title'] ?? "Default Title",
                    description: manager.pages[manager.pages.length-1]['description'] ?? "Default Description",
                    image: manager.pages[manager.pages.length-1]['image'] ?? "assets/default.png",
                  ),
                  ),
                );},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

