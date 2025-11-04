//@GeneratedMicroModule;EncryptedStoragePackageModule;package:encrypted_storage/encrypted_storage.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:encrypted_storage/src/encrypted_storage.dart' as _i1061;
import 'package:injectable/injectable.dart' as _i526;

class EncryptedStoragePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.singleton<_i1061.EncryptedStorage>(() => _i1061.EncryptedStorage());
  }
}
