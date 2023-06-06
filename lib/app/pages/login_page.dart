import 'package:flutter/material.dart';
import 'package:music_app/app/resources/app_colors.dart';
import 'package:music_app/app/resources/app_strings.dart';
import 'package:music_app/app/resources/app_values.dart';
import 'package:music_app/app/resources/image_routes.dart';
import 'package:music_app/app/widgets/login_option_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
      ),
      backgroundColor: AppColors.primaryBlack,
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            ImageRoutes.musiumLogoImage,
            width: 290,
            height: 200,
          ),
          Text(
            AppStrings.letGetYouIn,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.primaryWhite),
          ),
          const SizedBox(height: AppSize.s40),
          LoginOptionButton(
            text: AppStrings.loginWithGoogle,
            imageRoute: ImageRoutes.googleLogoImage,
            onTap: () {},
          ),
          const SizedBox(height: AppSize.s20),
          LoginOptionButton(
            text: AppStrings.loginWithFacebook,
            imageRoute: ImageRoutes.facebookLogoImage,
            onTap: () {},
          ),
          const SizedBox(height: AppSize.s20),
          LoginOptionButton(
            text: AppStrings.loginWithApple,
            imageRoute: ImageRoutes.appleLogoImage,
            color: AppColors.primaryWhite,
            onTap: () {},
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: const Divider(
                  height: 1,
                  color: Colors.white,
                  thickness: 1,
                  indent: 90,
                  endIndent: 50,
                ),
              ),
              const SizedBox(width: AppSize.s15),
              const Text('or'),
              const SizedBox(width: AppSize.s15),
              Container(
                color: Colors.white,
                child: const Divider(
                  height: 1,
                  color: Colors.white,
                  thickness: 1,
                  indent: 90,
                  endIndent: 50,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
