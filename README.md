# Encrypted Storage

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![app](https://github.com/broxus/encrypted_storage/actions/workflows/main.yaml/badge.svg)](https://github.com/broxus/encrypted_storage/actions/workflows/main.yaml)

This package provides a fast and simple way to store and retrieve encrypted data usind [sqflite][sqflite_link]. It uses AES encryption via [encrypt][encrypt_link] to encrypt the data and [flutter_secure_storage][flutter_secure_storage_link] to store key and initialization vector.

## Installation 💻

**❗ In order to start using Encrypted Storage you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `encrypted_storage` to your `pubspec.yaml`:

```yaml
dependencies:
  encrypted_storage:
```

Install it:

```sh
flutter packages get
```

---

## Getting Started 🚀

Install melos:

```sh
$ dart pub global activate melos
```

Using [melos](https://melos.invertase.dev/) makes it very easy to work with the project, so enjoy.

Boostrap packages recursively:

```sh
$ melos bs
```

## Codegen 🦾

This thing will run all code generators for all packages:

```
$ melos run codegen
```

## Code format checking and analyser 🦠

```
$ melos run check-format
$ melos run analyze
```

## Clean up 🧹

To clean up all packages just run:

```
$ melos clean
```

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ melos test
```

## Pre-commit preparation 🦠🧪🤏

To run code format check, analyzer and all tests use the following command:

```sh
$ melos check-all
```

## Package version 🔢

Package version is defined in `pubspec.yaml` file. To bump the version use the following command:

```sh
# For development releases:
$ melos version -a --yes --prerelease

# For production releases:
$ melos version -a --yes --graduate
```

You can use version workflow in GitHub actions to bump the version automatically. This workflow will create a new branch and PR (because push to main is prohibited) with the new version. Don't forget to merge the PR to main! Note: you should use [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) to make it work.

## Github Secrets 🔑

`BOT_ACCESS_TOKEN`: Personal access token (PAT) used to fetch the repository. We should use PAT and not default GITHUB_TOKEN because ["When you use the repository's GITHUB_TOKEN to perform tasks, events triggered by the GITHUB_TOKEN, with the exception of workflow_dispatch and repository_dispatch, will not create a new workflow run"](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow#triggering-a-workflow-from-a-workflow). We want to trigger a workflow from the workflow (to run tests), so we need to use PAT. This thing is used in `version` workflow.

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[flutter_secure_storage_link]: https://pub.dev/packages/flutter_secure_storage
[sqflite_link]: https://pub.dev/packages/sqflite
[encrypt_link]: https://pub.dev/packages/encrypt
