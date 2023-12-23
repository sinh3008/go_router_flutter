import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = 'profile';

  final int id;

  const ProfilePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Profile Page'),
      ),
      body: Center(
        child: Text(
          '$id', style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
