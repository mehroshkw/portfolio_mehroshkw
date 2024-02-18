import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_mehroshkw/src/config/export_config.dart';
import 'package:portfolio_mehroshkw/src/utils/extensions/export_extensions.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToMain();
    super.initState();
  }

  navigateToMain() async {
    await Future.delayed(const Duration(seconds: 3));
    AppRouter.push(context, AppRoute.main);
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: Center(child: LoadingAnimationWidget.dotsTriangle(color: theme.colorScheme.primary, size: 200)));
  }
}
