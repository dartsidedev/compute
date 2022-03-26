import 'compute.dart' as c;

/// The dart:html implementation of [c.compute].
Future<R> compute<Q, R>(
  c.ComputeCallback<Q, R> callback,
  Q message, {
  String? debugLabel,
}) async {
  // To avoid blocking the UI immediately for an expensive function call, we
  // pump a single frame to allow the framework to complete the current set
  // of work.
  await null;
  return callback(message);
}
