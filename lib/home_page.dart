import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/page_one.dart';
import 'package:go_router_flutter/page_two.dart';
import 'package:go_router_flutter/profile_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';

  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Go Router'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(PageOne.routeName);
              },
              child: const Text('Page one'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(PageTwo.routeName, extra: 'Hello Flutter');
              },
              child: const Text('Page two'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(
                  ProfilePage.routeName,
                  pathParameters: {'id': '199'},
                );
              },
              child: const Text('My Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/number');
              },
              child: const Text('Page null'),
            )
          ],
        ),
      ),
    );
  }
}
