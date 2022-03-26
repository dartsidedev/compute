# `compute`

> Flutter's compute function made available for all non-Flutter Dart programs

The `compute` package takes Flutter's `compute` function and makes it available for all Dart programs.

[![Continuous Integration](https://github.com/dartsidedev/compute/workflows/Continuous%20Integration/badge.svg?branch=main)](https://github.com/dartsidedev/compute/actions) [![codecov](https://codecov.io/gh/dartsidedev/compute/branch/main/graph/badge.svg)](https://codecov.io/gh/dartsidedev/compute) [![compute](https://img.shields.io/pub/v/compute?label=compute&logo=dart)](https://pub.dev/packages/compute 'See compute package info on pub.dev') [![Published by dartside.dev](https://img.shields.io/static/v1?label=Published%20by&message=dartside.dev&logo=dart&logoWidth=30&color=40C4FF&labelColor=1d599b&labelWidth=100)](https://pub.dev/publishers/dartside.dev/packages) [![GitHub Stars Count](https://img.shields.io/github/stars/dartsidedev/compute?logo=github)](https://github.com/dartsidedev/compute 'Star me on GitHub!')

## Important links

* [Read the source code and **star the repo** on GitHub](https://github.com/dartsidedev/compute)
* [Open an issue on GitHub](https://github.com/dartsidedev/compute/issues)
* [See package on pub.dev](https://pub.dev/packages/compute)
* [Read the docs on pub.dev](https://pub.dev/documentation/compute/latest/)
* [Flutter `foundation`'s `compute` function](https://api.flutter.dev/flutter/foundation/compute-constant.html))

**If you enjoy using this package, a thumbs-up on [pub.dev](https://pub.dev/packages/compute) would be highly appreciated! 👍💙

## Motivation

Working with isolates, wiring up the `SendPort`s, the `ReceivePort`s
is a lot of boilerplate code just to spawn an isolate, compute something, and use the computed value.

The `compute` function is a very useful abstraction over isolates that can be useful in all kinds of Dart apps.

This package addresses this issue. It extracts the `compute` function from Flutter and makes it available
for all Dart projects, so if you wish to perform some computation on a separate isolate and use its return value
in a Dart web app, command line tool, or any kind of non-Flutter Dart project, now you can!

Keep in mind, that by using compute, you lose some flexibility that working directly with isolates would enable you.
Please also keep in mind that you should benchmark your Dart applications with and without the compute function, and only switch to using `compute` if it really speeds up your application.

## Usage

### Dart

This package works everywhere and doesn't have any Flutter-specific dependency.

```dart
import 'package:compute/compute.dart';

int square(int a) => a * a;

Future<void> main() async {
  final squared = await compute(square, 5);
  print('5^2=$squared');
}
```

### Flutter

If you are on a Flutter project, you don't need this package.
This package should only be used in environments where you cannot use Flutter's `compute` function.

For your Flutter project, [use the `compute` function directly from Flutter's `foundation`](https://api.flutter.dev/flutter/foundation/compute-constant.html).
