import 'package:flutter/material.dart';
import 'package:music_app/app/resources/app_colors.dart';
import 'package:music_app/app/resources/app_strings.dart';
import 'package:music_app/app/resources/app_values.dart';

class LoginOptionButton extends StatelessWidget {
  const LoginOptionButton({
    super.key,
    required this.text,
    required this.imageRoute,
    required this.onTap,
    this.color,
  });
  final String text;
  final String imageRoute;
  final void Function() onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey,
      highlightColor: Colors.grey,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: AppSize.s59,
        margin: const EdgeInsets.only(left: 26, right: 26),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(AppSize.s10),
          border: Border.all(
              width: 0.2,
              color: const Color(0xFFDBE7E8),
              style: BorderStyle.solid),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: AppSize.s60),
            Image.asset(
              imageRoute,
              width: AppSize.s35,
              height: AppSize.s35,
              color: color,
            ),
            const SizedBox(width: AppSize.s10),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.primaryWhite),
            )
          ],
        ),
      ),
    );
  }
}
