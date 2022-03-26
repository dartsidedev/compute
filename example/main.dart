import 'package:compute/compute.dart';

int square(int a) => a * a;

Future<void> main() async {
  final squared = await compute(square, 5);
  print('5^2=$squared');
}
