import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'Screens/character_screen.dart';
import 'Screens/home_screen.dart';

void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/character',
      builder: (context, state) => const CharacterScreen(),
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rick and Morty App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true
      ),
      routerConfig: _router,
    );
  }
}