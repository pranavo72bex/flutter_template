import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const Center(child: Text('hello')),
          ElevatedButton(
            onPressed: () {
              context.navigateNamedTo('/lazy-loading-example');
            },
            child: const Text('Lazy Loading..'),
          )
        ],
      ),
    );
  }
}
