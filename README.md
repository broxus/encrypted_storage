# Encrypted Storage

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: AGPLv3][license_badge]][license_link]
[![app](https://github.com/broxus/encrypted_storage/actions/workflows/main.yaml/badge.svg)](https://github.com/broxus/encrypted_storage/actions/workflows/main.yaml)

This package provides a fast and simple way to store and retrieve encrypted data usind [sqflite][sqflite_link]. It uses AES encryption via [encrypt][encrypt_link] to encrypt the data and [flutter_secure_storage][flutter_secure_storage_link] to store key and initialization vector.

## Installation 💻

**❗ In order to start using Encrypted Storage you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add [encrypted_storage][pubdev_link] to your `pubspec.yaml`:

```yaml
dependencies:
  encrypted_storage:
```

## Basic usage 🛠

Setup DI:

```dart
@InjectableInit(  
  externalPackageModulesBefore: [
    ExternalModule(EncryptedStoragePackageModule),
  ],
)  
void configureDependencies() => getIt.init();  
```

Init:

```dart
Future<void> configureEncryptedStorage() async {
  final encryptedStorage = inject<EncryptedStorage>();
  await encryptedStorage.init();
}
```

## Melos magic 🪄

Using [melos](https://melos.invertase.dev/) makes it very easy to work with the project, so enjoy.

You can run any job interactively run running `melos run` and selecting needed case or directly (e.g. `melos run test`).

### Bootstrap 🏁

Melos takes care about dependencies of all packages, including managing of local-generated library version. So, just run:

```
melos bs
```

### Codegen 🦾

This thing will run all code generators for all packages:

```
$ melos run codegen
```

### Clean up 🧹

Just run commands below to clean all, including build directories and flutter projects.

```
melos clean
```

### Tests ✔️

You can run all tests at one by running this command.

```
melos run test
```

### Code 📊

You can run code analysis:

```
melos run analyze
```

### Code format 🗃️

`melos run check-format` will check, `melos run format` will fix dart code formatting.

```
melos run check-format
melos run format
```

### Prepare to commit 🤝🏻

`melos run check-all` will ckeck, analyze and run all tests.

```
melos run check-all
```

## Conventional Commits ❤️

[This magic](https://melos.invertase.dev/guides/automated-releases#versioning) will update version and build our library automatically using commit messages and tags. [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0) is a lightweight convention on top of commit messages.

## Version 🏷️

Package version control is done by melos. It runs by gh action 'Create version PR' ```melos version -a --yes```.

## Github Secrets 🔑

`BOT_ACCESS_TOKEN`: Personal access token (PAT) used to fetch the repository. We should use PAT and not default GITHUB_TOKEN because ["When you use the repository's GITHUB_TOKEN to perform tasks, events triggered by the GITHUB_TOKEN, with the exception of workflow_dispatch and repository_dispatch, will not create a new workflow run"](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#triggering-a-workflow-from-a-workflow). We want to trigger a workflow from the workflow (to run tests), so we need to use PAT. This thing is used in `version` workflow.

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[license_badge]: https://img.shields.io/badge/license-AGPLv3-blue.svg
[license_link]: https://opensource.org/license/agpl-v3/
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[flutter_secure_storage_link]: https://pub.dev/packages/flutter_secure_storage
[sqflite_link]: https://pub.dev/packages/sqflite
[encrypt_link]: https://pub.dev/packages/encrypt
[pubdev_link]: https://pub.dev/packages/encrypted_storage
