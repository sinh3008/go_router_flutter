import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/page_one_details.dart';

class PageOne extends StatelessWidget {
  static const String routeName = 'one';

  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page one'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(PageOneDetails.routeName);
              },
              child: const Text('Go to Page One Details'),
            )
          ],
        ),
      ),
    );
  }
}
