import 'dart:io';

void main() {
  var i;
  var s = 0;
  var arr = [];
  var txt = [];
  print('Toogoo oruul:');
  int? n = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= n; i++) {
    if (n % i == 0) {
      s = s + 1;
      arr.add(i);
    }
  }

  for (i = 0; i < arr.length; i++) {
    if (arr[i] == 3) {
      txt.add('плинг');
    } else if (arr[i] == 5) {
      txt.add('планг');
    } else if (arr[i] == 7) {
      txt.add('плонг');
    } else {
      txt.add(arr[i]);
    }
  }
  print(txt.toString());
}
