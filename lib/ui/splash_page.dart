import 'package:flutter/material.dart';
import 'package:uzum/components/constants/images.dart';
import 'package:uzum/ui/bottom_ui/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (_) => const MainPage()), (
            route) => false));
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          width: 120,
        ),
      ),
    );
  }
}
