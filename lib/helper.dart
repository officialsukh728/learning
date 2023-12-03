import 'dart:io';

T scanLog<T>() {
  final value = stdin.readLineSync() ?? "";
  if (T == int) {
    return (int.tryParse(value) ?? 0) as T;
  } else if (T == double) {
    return (double.tryParse(value) ?? 0.0) as T;
  } else if (T == num) {
    return (num.tryParse(value) ?? 0) as T;
  } else {
    return value as T;
  }
}

void printLog(Object? object) => stdout.write(object);
