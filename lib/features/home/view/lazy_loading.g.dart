// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lazy_loading.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$fetchListHash() => r'f8cf43c5561a57dc4ca778017f8770e75dd9ea1a';

/// See also [fetchList].
class FetchListProvider extends AutoDisposeFutureProvider<String> {
  FetchListProvider({
    required this.name,
  }) : super(
          (ref) => fetchList(
            ref,
            name: name,
          ),
          from: fetchListProvider,
          name: r'fetchListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchListHash,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is FetchListProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchListRef = AutoDisposeFutureProviderRef<String>;

/// See also [fetchList].
final fetchListProvider = FetchListFamily();

class FetchListFamily extends Family<AsyncValue<String>> {
  FetchListFamily();

  FetchListProvider call({
    required String name,
  }) {
    return FetchListProvider(
      name: name,
    );
  }

  @override
  AutoDisposeFutureProvider<String> getProviderOverride(
    covariant FetchListProvider provider,
  ) {
    return call(
      name: provider.name,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchListProvider';
}
