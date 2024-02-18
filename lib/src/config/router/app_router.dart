import 'package:flutter/material.dart';
import 'package:portfolio_mehroshkw/src/presentation/views/main_screen.dart';

import '../../presentation/views/splash_screen.dart';

// class AppRouter {
//   final GlobalKey<NavigatorState> navigatorKey;
//
//   AppRouter(this.navigatorKey);
//
//   Route<dynamic>? onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/splash':
//         return MaterialPageRoute(builder: (_) => const SplashScreen());
//       case '/main':
//         print('main');
//         return MaterialPageRoute(builder: (_) => const MainScreen());
//       default:
//         return null;
//     }
//   }
//
//   void push(AppRoute route, {Object? arguments}) {
//     switch (route) {
//       case AppRoute.splash:
//         navigatorKey.currentState?.pushNamed('/splash');
//         break;
//       case AppRoute.main:
//         NavigationService.navigatorKey.currentState?.pushNamed('/main');
//         print('main=======>');
//         break;
//     }
//   }
// }

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/main':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(body: Center(child: Text('Page not found')));
    });
  }

  static void push(BuildContext context, AppRoute route) {
    switch (route) {
      case AppRoute.splash:
        Navigator.pushNamed(context, '/splash');
        break;
      case AppRoute.main:
        Navigator.pushNamed(context, '/main');
        break;
    }
  }
}

enum AppRoute { splash, main }
