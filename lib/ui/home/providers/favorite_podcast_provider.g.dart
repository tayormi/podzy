// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_podcast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoritePodcastHash() => r'28cfc7fe55b42a42c18af12df3a0f115fa9449bc';

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

typedef FavoritePodcastRef = AutoDisposeProviderRef<bool>;

/// See also [favoritePodcast].
@ProviderFor(favoritePodcast)
const favoritePodcastProvider = FavoritePodcastFamily();

/// See also [favoritePodcast].
class FavoritePodcastFamily extends Family<bool> {
  /// See also [favoritePodcast].
  const FavoritePodcastFamily();

  /// See also [favoritePodcast].
  FavoritePodcastProvider call(
    int trackId,
  ) {
    return FavoritePodcastProvider(
      trackId,
    );
  }

  @override
  FavoritePodcastProvider getProviderOverride(
    covariant FavoritePodcastProvider provider,
  ) {
    return call(
      provider.trackId,
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
  String? get name => r'favoritePodcastProvider';
}

/// See also [favoritePodcast].
class FavoritePodcastProvider extends AutoDisposeProvider<bool> {
  /// See also [favoritePodcast].
  FavoritePodcastProvider(
    this.trackId,
  ) : super.internal(
          (ref) => favoritePodcast(
            ref,
            trackId,
          ),
          from: favoritePodcastProvider,
          name: r'favoritePodcastProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoritePodcastHash,
          dependencies: FavoritePodcastFamily._dependencies,
          allTransitiveDependencies:
              FavoritePodcastFamily._allTransitiveDependencies,
        );

  final int trackId;

  @override
  bool operator ==(Object other) {
    return other is FavoritePodcastProvider && other.trackId == trackId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, trackId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
