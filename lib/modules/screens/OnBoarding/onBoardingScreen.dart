import 'package:flutter/material.dart';
import 'onBoardingManager.dart';
import 'package:mossef_app/modules/screens/Login/login.dart';
import 'package:mossef_app/modules/screens/Sign-up/signUp.dart';
import 'package:mossef_app/modules/screens/OnBoarding/logORsign.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final OnBoardingManager manager = OnBoardingManager();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    manager.pageController.addListener(() {
      setState(() {
        _currentPage = (manager.pageController.page ?? 0).round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: manager.pageController,
              itemCount: manager.pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnBoardingPage(
                  title: manager.pages[index]['title'] ?? "Default Title",
                  description: manager.pages[index]['description'] ?? "Default Description",
                  image: manager.pages[index]['image'] ?? "assets/default.png",
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(manager.pages.length, (index) {
              return Container(
                margin: EdgeInsets.all(4),
                width: _currentPage == index ? 12 : 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.blue : Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_currentPage < manager.pages.length - 1) {
                manager.pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                // Navigate to home screen (Replace with actual navigation)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  EntryScreen()),
                );
              }
            },
            child: Text(_currentPage == manager.pages.length - 1 ? "Get Started" : "Next"),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String title, description, image;

  const OnBoardingPage({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250, errorBuilder: (context, error, stackTrace) {
          return Image.asset("assets/default.png", height: 250);
        }),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}