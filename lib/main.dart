import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:music_app/app/pages/welcome_page.dart';
import 'package:music_app/app/resources/app_theme.dart';
import 'package:music_app/app/resources/image_routes.dart';

void main() {
  runApp(const MusiumApp());
}

class MusiumApp extends StatelessWidget {
  const MusiumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: AnimatedSplashScreen(
        splashIconSize: 300,
        splash: Center(
          child: Column(
            children: [
              Image.asset(
                ImageRoutes.musiumLogoImage,
                width: 250,
                height: 250,
              ),
              // Image.asset('assets/images/musium.png')
            ],
          ),
        ),
        nextScreen: const WelcomePage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black,
        duration: 3000,
      ),
    );
  }
}
