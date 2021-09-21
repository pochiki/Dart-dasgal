import 'dart:io';

void main() {
  var flag = 0, i, j;
  String? n = (stdin.readLineSync()!);
  var result = n.split('');
  var x = result.length;
  for (i = 0; i < x; i++) {
    for (j = i + 1; j < x; j++) {
      if (result[i] == result[j]) {
        flag++;
      }
    }
  }
  if (flag != 0) {
    print('исограм биш');
  } else {
    print('исограм');
  }
}
