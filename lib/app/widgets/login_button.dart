import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String text;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF06A0B5),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
    );
  }
}
