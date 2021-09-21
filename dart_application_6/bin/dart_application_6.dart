import 'dart:io';

void main() {
  var list = {
    'Буд': toSeconds(0.2408467),
    'Сугар': toSeconds(0.61519726),
    'Дэлхий': toSeconds(1),
    'Ангараг': toSeconds(1.8808158),
    'Бархасбади': toSeconds(11.862615),
    'Санчир': toSeconds(29.447498),
    'Далай ван': toSeconds(84.016846)
  };
  print('Секундээ оруул:');
  var n = double.parse(stdin.readLineSync()!);
  list.forEach((key, value) {
    var value1 = num.parse((n / value).toStringAsFixed(2));
    print('$key гараг дээр байх үед таны нас: $value1');
  });
}

double toSeconds(double i) {
  return i * 31557600;
}
