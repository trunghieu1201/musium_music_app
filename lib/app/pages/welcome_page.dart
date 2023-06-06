import 'package:flutter/material.dart';
import 'package:music_app/app/pages/home_page.dart';
import 'package:music_app/app/pages/login_page.dart';
import 'package:music_app/app/resources/app_colors.dart';
import 'package:music_app/app/resources/app_values.dart';
import 'package:music_app/app/resources/image_routes.dart';
import 'package:music_app/app/widgets/login_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
        color: AppColors.lighterBlue,
      ),
      Positioned(
        top: screenHeight * 0.19,
        left: 0,
        child: Image.asset(
          ImageRoutes.girlImage,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      Positioned(
          top: screenHeight * 0.106,
          left: screenWidth * 0.71,
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              backgroundBlendMode: BlendMode.softLight,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [AppColors.lightBlack, AppColors.lighterBlue]),
              color: AppColors.lightBlack,
              shape: BoxShape.circle,
            ),
          )),
      Positioned(
          top: screenHeight * 0.3,
          left: screenWidth * 0.73,
          child: Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
              backgroundBlendMode: BlendMode.softLight,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [AppColors.lightBlack, AppColors.lighterBlue]),
              color: AppColors.lightBlack,
              shape: BoxShape.circle,
            ),
          )),
      Positioned(
        top: screenHeight * 0.07,
        left: screenWidth * 0.07,
        child: Container(
          height: 149,
          width: 146,
          decoration: const BoxDecoration(
            backgroundBlendMode: BlendMode.softLight,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF121111), AppColors.lighterBlue]),
            color: Color(0xFF121111),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        top: screenHeight * 0.6,
        left: 0,
        child: Container(
          height: screenHeight * 0.47,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.primaryBlack,
            borderRadius: BorderRadius.circular(54),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                    text: 'From the ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 24),
                    children: const [
                      TextSpan(
                          text: 'latest ',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.lightBlue,
                          )),
                      TextSpan(
                          text: 'to the',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'greatest ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 24, color: AppColors.lightBlue),
                    children: const [
                      TextSpan(
                          text: 'hits, play your',
                          style: TextStyle(
                              fontSize: 24, color: AppColors.primaryWhite)),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'favorite tracks on ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 24),
                    children: const [
                      TextSpan(
                          text: 'musium ',
                          style: TextStyle(
                              fontSize: 24, color: AppColors.lightBlue)),
                      TextSpan(text: 'now!', style: TextStyle(fontSize: 24)),
                    ]),
              ),
              const SizedBox(height: AppSize.s100),
              LoginButton(
                text: 'Get Started',
                color: AppColors.primaryBlue,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: screenHeight * 0.89,
        left: screenWidth * 0.38,
        child: Container(
          height: 9,
          width: 59,
          decoration: BoxDecoration(
            color: AppColors.primaryBlue,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      Positioned(
        top: screenHeight * 0.89,
        left: screenWidth * 0.5,
        child: Container(
          height: 9,
          width: 59,
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    ]);
  }
}
