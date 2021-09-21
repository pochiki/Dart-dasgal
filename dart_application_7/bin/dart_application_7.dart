import 'dart:io';

void main() {
  var j, b, c, s = 0;
  var a = [];
  var n = int.parse(stdin.readLineSync()!);
  var max, min;
  for (var i = 0; i < n; i++) {
    var x = int.parse(stdin.readLineSync()!);
    a.add(x);
    max = i;
    min = 0;
    while (min != max) {
      if (a[((max + min) / 2).floor()] >= a[i]) {
        max = ((max + min) / 2).floor();
      } else {
        min = ((max + min) / 2).floor();
      }
      if (s - 3 == i) {
        break;
      }
      s++;
    }
    c = a[max];
    a[max] = a[i];
    for (j = max; j < i; j++) {
      b = a[j + 1];
      a[j + 1] = c;
      c = b;
    }
  }
  print('\nSorted:');
  print(a);
}
