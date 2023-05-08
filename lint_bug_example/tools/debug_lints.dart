import 'dart:io';
import 'package:custom_lint/custom_lint.dart';

// Run this through your IDE to run the lints with debugging features.
Future<void> main() async {
  final dir = Directory.current;
  print('Debugging from project directory: $dir');
  await customLint(workingDirectory: dir);
}
