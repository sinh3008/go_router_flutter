import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/login_page.dart';
import 'package:go_router_flutter/page_one.dart';
import 'package:go_router_flutter/page_one_details.dart';
import 'package:go_router_flutter/page_two.dart';
import 'package:go_router_flutter/profile_page.dart';

import 'home_page.dart';

bool isLoginIn = true;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = GoRouter(
    errorBuilder: (context, state) => const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
    redirect: (context, state) {
      if (!isLoginIn) {
        return '/login';
      } else {
        return null;
      }
    },
    routes: [
      GoRoute(
        name: HomePage.routeName,
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: ProfilePage.routeName,
            path: 'profile/:id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return ProfilePage(
                id: int.parse(id),
              );
            },
          )
        ],
      ),
      GoRoute(
        name: PageOne.routeName,
        path: '/one',
        builder: (context, state) => const PageOne(),
        routes: [
          GoRoute(
            name: PageOneDetails.routeName,
            path: 'one_details',
            builder: (context, state) => const PageOneDetails(),
          )
        ],
      ),
      GoRoute(
        name: PageTwo.routeName,
        path: '/two',
        builder: (context, state) {
          String msg = state.extra! as String;
          return PageTwo(
            greetings: msg,
          );
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginPage();
        },
      ),
    ],
    initialLocation: '/',
    debugLogDiagnostics: true,
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
