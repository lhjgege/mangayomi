// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$anilistHash() => r'd09ca797106b31f075d5ded66ae138639b6ca745';

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

abstract class _$Anilist extends BuildlessAutoDisposeNotifier<dynamic> {
  late final int syncId;

  dynamic build({
    required int syncId,
  });
}

/// See also [Anilist].
@ProviderFor(Anilist)
const anilistProvider = AnilistFamily();

/// See also [Anilist].
class AnilistFamily extends Family<dynamic> {
  /// See also [Anilist].
  const AnilistFamily();

  /// See also [Anilist].
  AnilistProvider call({
    required int syncId,
  }) {
    return AnilistProvider(
      syncId: syncId,
    );
  }

  @override
  AnilistProvider getProviderOverride(
    covariant AnilistProvider provider,
  ) {
    return call(
      syncId: provider.syncId,
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
  String? get name => r'anilistProvider';
}

/// See also [Anilist].
class AnilistProvider
    extends AutoDisposeNotifierProviderImpl<Anilist, dynamic> {
  /// See also [Anilist].
  AnilistProvider({
    required this.syncId,
  }) : super.internal(
          () => Anilist()..syncId = syncId,
          from: anilistProvider,
          name: r'anilistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$anilistHash,
          dependencies: AnilistFamily._dependencies,
          allTransitiveDependencies: AnilistFamily._allTransitiveDependencies,
        );

  final int syncId;

  @override
  bool operator ==(Object other) {
    return other is AnilistProvider && other.syncId == syncId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, syncId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  dynamic runNotifierBuild(
    covariant Anilist notifier,
  ) {
    return notifier.build(
      syncId: syncId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions