import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/home/home.screen.dart';
import 'package:presentation/splash/splash.screen.dart';

enum LookRoute {
  splash(path: '/'),
  home(path: '/home');

  final String path;

  const LookRoute({required this.path});
}

class LookRouter {
  /// go router with no parameter
  ///
  /// GoRoute(
  ///   path: '/',
  ///   builder: (context, state) => const SplashScreen(),
  /// ),

  /// go router with parameter
  ///
  /// GoRoute(
  ///   path: '/users/:userId',
  ///   builder: (context, state) => const UserScreen(id: state.pathParameters['userId']),
  /// ),
  static final router = GoRouter(
    initialLocation: LookRoute.splash.path,
    routes: [
      GoRoute(
        path: LookRoute.splash.path,
        name: LookRoute.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: LookRoute.home.path,
        name: LookRoute.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );

  static void goHome(BuildContext context) {
    GoRouter.of(context).go(LookRoute.home.name);
  }
}
