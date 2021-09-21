import 'dart:io';

bool undurjil(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

void main() {
  print('Жилээ оруулна уу:');
  var year = int.parse(stdin.readLineSync()!);

  (undurjil(year))
      ? print('$year он өндөр жил мөн')
      : print('$year он өндөр жил биш');
}
