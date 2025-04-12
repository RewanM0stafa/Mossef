import 'navigationRouter.dart';

void delayedNavigate(context) {
  Future.delayed(
      const Duration(seconds: 2),
          () { //navigate to the next screen after 2 seconds
        customNavigate(context,"/onBoardingView");
      }
  );
}