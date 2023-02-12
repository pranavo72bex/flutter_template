import 'package:auto_route/auto_route.dart';
import 'package:flutter_template/features/home/view/home_page.dart';
import 'package:flutter_template/features/home/view/lazy_loading.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage),
    MaterialRoute(
      page: RiverpodCodeGenerationExaple,
      initial: true,
    ),
  ],
)
class $AppRouter {}
