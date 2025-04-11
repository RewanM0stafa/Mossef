import 'package:flutter/material.dart';

class OnBoardingManager {
  // Singleton pattern
  static final OnBoardingManager _instance = OnBoardingManager._internal();//=>instance is assigned to a private named constr,only one obj using one constr

  factory OnBoardingManager() => _instance; //(factory) is a keyword ,ex:static, used to return an existing object instead of creating a new one.

  OnBoardingManager._internal();// the constr with this name(internal) is private(in this singleton class)

  // Page Controller
  final PageController pageController = PageController(); //helps control which page to show.(mentor)

  // Onboarding pages data
  final List<Map<String, String>> pages = [
    {
      "title": "Welcome!",
      "description": "",
      "image": "assets/videos&gifs/Dementia.gif",
    }, // screen01
    {
      "title": "Easy to Use",
      "description": "Everything is designed for simplicity.",
      "image": "assets/videos&gifs/Hospital wheelchair.gif",
    }, //screen02


  ];
}
