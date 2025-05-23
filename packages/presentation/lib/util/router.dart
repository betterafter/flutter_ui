import 'package:go_router/go_router.dart';
import 'package:presentation/splash/splash.screen.dart';

enum LookRoute {
  splash,
  home,
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
    initialLocation: LookRoute.splash.name,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );

  static Future<void> goHome() async {
    await router.push(LookRoute.home.name);
  }
}
