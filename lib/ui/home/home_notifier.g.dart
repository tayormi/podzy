// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTrendingHash() => r'ba43a736d384fee4b092467140a4968ee59d4d96';

/// See also [getTrending].
@ProviderFor(getTrending)
final getTrendingProvider = AutoDisposeFutureProvider<SearchResult>.internal(
  getTrending,
  name: r'getTrendingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTrendingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTrendingRef = AutoDisposeFutureProviderRef<SearchResult>;
String _$getCategoryHash() => r'dc425f832e41ebcb3afa607860dbf715de1b0d97';

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

typedef GetCategoryRef = AutoDisposeFutureProviderRef<SearchResult>;

/// See also [getCategory].
@ProviderFor(getCategory)
const getCategoryProvider = GetCategoryFamily();

/// See also [getCategory].
class GetCategoryFamily extends Family<AsyncValue<SearchResult>> {
  /// See also [getCategory].
  const GetCategoryFamily();

  /// See also [getCategory].
  GetCategoryProvider call({
    String category = '',
  }) {
    return GetCategoryProvider(
      category: category,
    );
  }

  @override
  GetCategoryProvider getProviderOverride(
    covariant GetCategoryProvider provider,
  ) {
    return call(
      category: provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCategoryProvider';
}

/// See also [getCategory].
class GetCategoryProvider extends AutoDisposeFutureProvider<SearchResult> {
  /// See also [getCategory].
  GetCategoryProvider({
    this.category = '',
  }) : super.internal(
          (ref) => getCategory(
            ref,
            category: category,
          ),
          from: getCategoryProvider,
          name: r'getCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryHash,
          dependencies: GetCategoryFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryFamily._allTransitiveDependencies,
        );

  final String category;

  @override
  bool operator ==(Object other) {
    return other is GetCategoryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
