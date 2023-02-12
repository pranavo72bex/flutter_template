import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'lazy_loading.g.dart';

//fake network request
@riverpod
Future<List<int>> fetchList(FetchListRef ref, {required int num}) async {
  await Future.delayed(const Duration(seconds: 2));
  final listOfNumber = List<int>.generate(num, (index) => index + 1);
  return listOfNumber;
}

class RiverpodCodeGenerationExaple extends ConsumerWidget {
  const RiverpodCodeGenerationExaple({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const int num = 10000;
    final listOfString = ref.watch(fetchListProvider(num: num));

    return Scaffold(
      body: Center(
        child: listOfString.when(
          data: (data) {
            return ListView.builder(
              itemCount: num,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('$index'),
                );
              },
            );
          },
          error: (error, stack) => const Text('error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
