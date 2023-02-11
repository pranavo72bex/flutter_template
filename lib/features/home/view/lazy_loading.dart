import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'lazy_loading.g.dart';

//fake network request
@riverpod
Future<String> fetchList(FetchListRef ref, {required String name}) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Hello $name';
}

class LazyLoadingExample extends ConsumerWidget {
  const LazyLoadingExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listOfString = ref.watch(fetchListProvider(name: 'Ram'));
    return Scaffold(
      body: Center(
        child: listOfString.when(
          data: (data) {
            return Text(data);
          },
          error: (error, stack) => const Text('error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
