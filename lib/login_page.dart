import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = 'login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Login Page'),
      ),
      body: Center(
        child: Text(
          'Login Page',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
