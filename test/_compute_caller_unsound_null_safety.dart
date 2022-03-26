// @dart=2.9
// Running in unsound null-safety mode is intended to test for potential miscasts
// or invalid assertions.

import 'package:compute/compute.dart';

int returnInt(int arg) {
  return arg;
}

Future<int> returnIntAsync(int arg) {
  return Future<int>.value(arg);
}

Future<void> testCompute<T>(ComputeCallback<T, T> callback, T input) async {
  if (input != await compute(callback, input)) {
    throw Exception('compute returned bad result');
  }
}

void main() async {
  await testCompute(returnInt, 10);
  await testCompute(returnInt, null);
  await testCompute(returnIntAsync, 10);
  await testCompute(returnIntAsync, null);
}
