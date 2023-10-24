import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
      ),
      routes: [
        GoRoute(
          path: 'details',
          builder: (context, state) {
            final email = state.uri.queryParameters['email'];
            return Scaffold(
              appBar: AppBar(title: const Text('Details Screen')),
              body: Center(
                child: Text(email ?? 'No Email provided'),
              ),
            );
          },
        ),
      ],
    ),
  ],
);
