import 'dart:math';
import 'names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runTask1();
  runTask2();
  runTask3();

  print('\n=== ПРАКТИЧНІ ЗАВДАННЯ ===');
  practiceTask1();
  practiceTask2();
  practiceTask3();
  practiceTask4();
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

void practiceTask1() {
  print('\n=== Практичне завдання 1: Робота зі списками ===');

  // КРОК 1: Створіть список з 20 випадкових чисел від 1 до 50
  // Використайте: List.generate(20, (_) => Random().nextInt(50) + 1)
  // Збережіть у змінну numbers
  // Виведіть список на екран
  List<int> numbers = List.generate(20, (_) => Random().nextInt(50) + 1);
  print(numbers);

  // КРОК 2: Знайдіть найбільше і найменше число
  // Використайте: numbers.reduce((a, b) => a > b ? a : b) для максимуму
  // Використайте: numbers.reduce((a, b) => a < b ? a : b) для мінімуму
  // Виведіть результати
  int larger = (numbers.reduce((a, b) => a > b ? a : b));
  int smaller = (numbers.reduce((a, b) => a < b ? a : b));
  print(larger);
  print(smaller);

  // КРОК 3: Порахуйте скільки чисел більше 25
  // Створіть змінну countAbove25 = 0
  // Використайте цикл for-in для перебору numbers
  // Перевірте умову if (num > 25) і збільшуйте лічильник
  // Виведіть результат
  int countAbove25 = 0;
  for (int number in numbers) {
    if (number > 25) {
      countAbove25 += 1;
    }
  }
  print(countAbove25);

  // КРОК 4: Створіть новий список з квадратів чисел
  // Використайте: numbers.map((num) => num * num).toList()
  // Збережіть у змінну squares
  // Виведіть результат
  List<int> square = numbers.map((num) => num * num).toList();
  print(square);

  // КРОК 5: Відсортуйте список у спадному порядку
  // Створіть копію: [...numbers]
  // Використайте: sort((a, b) => b.compareTo(a))
  // Виведіть відсортований список
  List sortedNumbers = [...numbers]..sort((a, b) => b.compareTo(a));
  print(sortedNumbers);
}

void practiceTask2() {
  print('\n=== Практичне завдання 2: Робота з рядками ===');

  // КРОК 1: Створіть список з 10 кольорів українською мовою
  // Приклад: List<String> colors = ['червоний', 'синій', ...];
  // Виведіть початковий список
  List<String> colors = ['червоний', 'синій', 'зелений', 'жовтий', 'фіолетовий', 'помаранчевий', 'рожевий', 'коричневий', 'чорний', 'білий'];
  print(colors);

  // КРОК 2: Додайте ще 5 кольорів до списку
  // Використайте: colors.addAll(['новий1', 'новий2', ...]);
  // Виведіть оновлений список
  colors.addAll(['бірюзовий', 'бежевий', 'бордовий', 'блакитний']);
  print(colors);

  // КРОК 3: Видаліть всі кольори, що починаються з "б"
  // Використайте: colors.removeWhere((color) => color.startsWith('б'));
  // Виведіть список після видалення
  colors.removeWhere((colors) => colors.startsWith('б'));
  print(colors);

  // КРОК 4: Знайдіть найдовший колір за кількістю символів
  // Використайте: colors.reduce((a, b) => a.length > b.length ? a : b);
  // Виведіть найдовший колір і його довжину
  String longestColor = colors.reduce((a, b) => a.length > b.length ? a : b);
  print(longestColor);

  // КРОК 5: Створіть новий список з великими літерами
  // Використайте: colors.map((color) => color.toUpperCase()).toList();
  // Виведіть список у верхньому регістрі
  print(colors.map((colors) => colors.toUpperCase()).toList());

  // БОНУС: Виведіть статистику
  // - Загальна кількість кольорів: colors.length
  print(colors.length);
  // - Середня довжина: обчисліть самостійно
  int totalLength = 0;
  for (String color in colors) {
    totalLength += color.length;
  }
  double averageLength = totalLength / colors.length;
  print(averageLength);
}

void practiceTask3() {
  print('\n=== Практичне завдання 3: Робота з множинами (Set) ===');

  // КРОК 1: Створіть дві множини
  // Парні числа 0-20: List.generate(21, (i) => i).where((num) => num % 2 == 0).toSet()
  // Кратні 3 (0-20): List.generate(21, (i) => i).where((num) => num % 3 == 0).toSet()
  // Виведіть обидві множини
  Set<int> list1 = List.generate(21, (i) => i).where((num) => num % 2 == 0).toSet();
  Set<int> list2 = List.generate(21, (i) => i).where((num) => num % 3 == 0).toSet();
  print(list1);
  print(list2);

  // КРОК 2: Знайдіть числа, які є в обох множинах
  // Використайте: evenNumbers.intersection(multiplesOf3)
  // Виведіть пересічення
  Set<int> same = list1.intersection(list2);
  print(same);

  // КРОК 3: Знайдіть числа, які є тільки в першій множині
  // Використайте: evenNumbers.difference(multiplesOf3)
  // Виведіть різницю
  Set<int> difference = list1.difference(list2);
  print(difference);

  // КРОК 4: Об'єднайте обидві множини
  // Використайте: evenNumbers.union(multiplesOf3)
  // Виведіть об'єднання
  Set<int> union = list1.union(list2);
  print(union);

  // КРОК 5: Виведіть загальну кількість унікальних чисел
  // Використайте: union.length
  print(union.length);

}

void practiceTask4() {
  print('\n=== Практичне завдання 4: Робота з словниками (Map) ===');

  // КРОК 1: Створіть словник "студент -> оцінка" для 10 студентів
  // Map<String, int> students = {'Ім\'я': оцінка, ...};
  // Використайте українські імена і оцінки 50-100
  // Виведіть словник
  Map<String, int> students = {
    'Богдан': 87, 'Вікторія': 93, 'Григорій': 67, 'Дарина': 89,
    'Євген': 52, 'Жанна': 96, 'Захар': 71, 'Інна': 84,
    'Кирило': 58, 'Лариса': 90
  };
  print(students);
  // КРОК 2: Знайдіть середній бал
  // Використайте: students.values.reduce((a, b) => a + b) / students.length
  // Виведіть середній бал
  double average = (students.values.reduce((a, b) => a + b) / students.length);
  print(average);
  // КРОК 3: Виведіть студентів з оцінкою вище середнього
  // Використайте: students.entries.where((entry) => entry.value > averageScore)
  // Переберіть результат циклом forEach
  students.entries.where((entry) => entry.value > average).forEach((entry) =>
      print('${entry.key}: ${entry.value}'));

  // КРОК 4: Додайте бонус +5 балів студентам з оцінкою менше 60
  // Використайте: students.updateAll((name, score) => score < 60 ? score + 5 : score)
  // Виведіть оновлені оцінки
  students.updateAll((name, score) => score < 60 ? score + 5 : score);
  print(students);

  // КРОК 5: Відсортуйте студентів за оцінками (найкращі першими)
  // Перетворіть на список: students.entries.toList()
  // Відсортуйте: sort((a, b) => b.value.compareTo(a.value))
  // Виведіть відсортований список
  List score = students.entries.toList();
  score.sort((a, b) => b.value.compareTo(a.value));
  print(score);
  // БОНУС: Виведіть статистику
  // - Найвища оцінка: students.values.reduce((a, b) => a > b ? a : b)
  print(students.values.reduce((a, b) => a > b ? a : b));
  // - Найнижча оцінка: students.values.reduce((a, b) => a < b ? a : b)
  print(students.values.reduce((a, b) => a < b ? a : b));
  // - Кількість студентів: students.length
  print(students.length);
}
