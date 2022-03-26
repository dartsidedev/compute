// @dart=2.9
// Running in unsound null-safety mode is intended to test for potential miscasts
// or invalid assertions.

import 'package:compute/compute.dart';

int throwNull(int arg) {
  throw null;
}

void main() async {
  try {
    await compute(throwNull, null);
  } catch (e) {
    if (e is! NullThrownError) {
      throw Exception('compute returned bad result');
    }
  }
}
