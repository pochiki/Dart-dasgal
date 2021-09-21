import 'dart:io';

import 'dart:math';

void main() {
  var n = int.parse(stdin.readLineSync()!);
  var ss = n;
  var length = n.toString().length;

  dr(n, length, ss)
      ? print('Армстронгийн тоо мөн')
      : print('Армстронгийн тоо биш');
}

bool dr(int n, int length, int i) {
  num s = 0;
  while (n > 0) {
    s += pow((n % 10), length);
    n ~/= 10;
  }

  if (s == i) {
    return true;
  } else {
    return false;
  }
}
