import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runTask1();
  runTask2();
  runTask3();
}

void runTask1() {
  List<int> generatedNumbers = List.generate(100, (_) => Random().nextInt(101));

  print('Список numbers:');
  print(generatedNumbers);

  print('\n65-й елемент: ${generatedNumbers[64]}');

  generatedNumbers.insert(49, 1000000000);
  print('\nПісля вставки 1000000000 на 50-ту позицію:');

  generatedNumbers.removeWhere(
    (element) =>
        element == 24 || element == 45 || element == 66 || element == 88,
  );
  print(generatedNumbers);

  int sum = 0;
  for (int i = 0; i < generatedNumbers.length; i++) {
    if (generatedNumbers[i] % 3 == 0) {
      sum += generatedNumbers[i];
    }
  }
  print('\nСума елементів, що діляться на 3: $sum');

  List<int> temp = [];

  for (int number in generatedNumbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }

  print('\nДовжина списку temp (елементи, що діляться на 2): ${temp.length}');

  print('Список temp: $temp');
}

void runTask2() {
  Set<String> uniqueNames1 = ukrainianNames1.toSet();
  Set<String> uniqueNames2 = ukrainianNames2.toSet();

  Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('\nКількість спільних імен: ${commonNames.length}');

  Set<String> onlyInFirst = uniqueNames1.difference(uniqueNames2);
  print('\nІмена, що є в uniqueNames1, але немає в uniqueNames2:');
  print(onlyInFirst);

  Set<String> onlyInSecond = uniqueNames2.difference(uniqueNames1);
  print('\nІмена, що є в uniqueNames2, але немає в uniqueNames1:');
  print(onlyInSecond);
}

void runTask3() {
  List<String> nounsList = WordGenerator().randomNouns(50);

  Map<String, int> nounsMap = {};
  for (String word in nounsList) {
    nounsMap[word] = word.length;
  }

  Map<String, int> tempNouns = {};

  for (String key in nounsMap.keys) {
    if (nounsMap[key]! % 2 == 0) {
      tempNouns[key] = nounsMap[key]!;
    }
  }

  print('\nВсі ключі зі tempNouns:');
  print(tempNouns.keys);
}
