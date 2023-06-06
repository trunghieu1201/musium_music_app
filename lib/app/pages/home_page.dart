import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Musium', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset('assets/images/musium_logo.png'),
          Text(
            'Century Gothic',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      )),
    );
  }
}
