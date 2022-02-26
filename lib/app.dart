import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/routes/routes.dart';
import 'package:flutter_template/theme/theme.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: 'Flutter Template',
      theme: defaultTheme,
    );
  }
}
