import 'package:go_router/go_router.dart';
import 'package:presentation/splash/splash.screen.dart';

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
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );

  static Future<void> goHome() async {
    // TODO: 홈 화면으로 이동
  }
}
