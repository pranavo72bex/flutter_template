// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../features/home/view/home_page.dart' as _i1;
import '../features/home/view/lazy_loading.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    RiverpodCodeGenerationExapleRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.RiverpodCodeGenerationExaple(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          RiverpodCodeGenerationExapleRoute.name,
          path: '/riverpod-code-generation-exaple',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.RiverpodCodeGenerationExaple]
class RiverpodCodeGenerationExapleRoute extends _i3.PageRouteInfo<void> {
  const RiverpodCodeGenerationExapleRoute()
      : super(
          RiverpodCodeGenerationExapleRoute.name,
          path: '/riverpod-code-generation-exaple',
        );

  static const String name = 'RiverpodCodeGenerationExapleRoute';
}
