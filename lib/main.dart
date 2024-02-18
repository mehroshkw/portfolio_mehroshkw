import 'package:flutter/material.dart';
import 'package:portfolio_mehroshkw/src/presentation/views/splash_screen.dart';
import 'src/config/export_config.dart';
import 'src/utils/constants/app_strings.dart';

final BaseConstant darkThemeConstant = DarkThemeConstant();
final BaseConstant lightThemeConstant = LightThemeConstant();

class MyApp extends StatelessWidget {
  final AppRouter router;

  const MyApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      title: AppStrings.APP_NAME,
      darkTheme: darkThemeConstant.themeData,
      theme: lightThemeConstant.themeData,
      initialRoute: SplashScreen.route,
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppRouter router = AppRouter();
  runApp(MyApp(router: router));
}
