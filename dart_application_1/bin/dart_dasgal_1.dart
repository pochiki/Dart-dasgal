import 'dart:io';

import 'dart:math';

void main() {
  var x0 = 0;
  var y0 = 0;
  print('x:');
  double? x = double.parse(stdin.readLineSync()!);
  print('y:');
  double? y = double.parse(stdin.readLineSync()!);
  print(length(x, y, x0, y0));
}

double length(double x, double y, int x0, int y0) {
  var n = sqrt(pow((x - x0), 2) + pow((y - y0), 2));
  if (n >= 0 && n <= 1) {
    return 10;
  } else if (n > 1 && n <= 5) {
    return 5;
  } else if (n > 5 && n <= 10) {
    return 1;
  } else {
    return 0;
  }
}
