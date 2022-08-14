/// When working with isolates, wiring up the `SendPort`s, the `ReceivePort`s
/// correctly is a lot of boilerplate code when all you want to do is spawn an
/// isolate, compute something, and use the computed value.
///
/// Flutter's `compute` function is a very useful abstraction over isolates that
/// can be useful in all kinds of Dart apps.
///
/// Unfortunately, Flutter's `compute` function is not available for a Dart
/// package that doesn't use Flutter, for example command-line and server-side
/// applications.
///
/// This package addresses this issue. It extracts the `compute` function from
/// Flutter and makes it available for all Dart projects, so if you wish to
/// perform some computation on a separate isolate and use its return value,
/// now you can!
///
/// **Disclaimers**
///
/// Do not assume that using `compute` will automatically speed up your code:
/// you should benchmark your Dart applications
/// *with and without the `compute` function*, and only switch to using
/// `compute` if it really speeds up your application.
///
/// Keep in mind, that by using `compute`, you lose some flexibility that
/// working directly with isolates would enable you.
///
/// The package is safe to be used on web, but there will be no real isolates
/// spawned.
///
/// Changes are synced with Flutter's stable branch only (and they are currently
/// synced manually).
export 'src/compute.dart';
