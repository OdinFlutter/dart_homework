// 📚 ДОВІДНИК DART: РОБОТА З КОЛЕКЦІЯМИ

// ========== СПИСКИ (List) ==========

// 🔹 Створення списків:
// List<int> numbers = [1, 2, 3];
// List<String> names = [];
// List<int> generated = List.generate(5, (i) => i * 2);
// List<int> filled = List.filled(3, 0);

// 🔹 Основні методи списків:
// numbers.add(4);                    // Додати елемент
// numbers.addAll([5, 6, 7]);        // Додати кілька елементів
// numbers.insert(0, 0);             // Вставити на позицію
// numbers.remove(3);                // Видалити за значенням
// numbers.removeAt(0);              // Видалити за індексом
// numbers.removeWhere((n) => n > 5); // Видалити за умовою
// numbers.length;                   // Довжина списку
// numbers[0];                       // Доступ за індексом
// numbers.first;                    // Перший елемент
// numbers.last;                     // Останній елемент

// 🔹 Перетворення списків:
// numbers.map((n) => n * 2).toList();          // Перетворити кожен елемент
// numbers.where((n) => n > 5).toList();        // Відфільтрувати
// numbers.reduce((a, b) => a + b);             // Звести до одного значення
// numbers.sort();                              // Сортувати
// numbers.sort((a, b) => b.compareTo(a));      // Сортувати в спадному порядку
// numbers.reversed.toList();                   // Перевернути

// ========== МНОЖИНИ (Set) ==========

// 🔹 Створення множин:
// Set<int> numbers = {1, 2, 3};
// Set<String> names = <String>{};
// Set<int> fromList = [1, 2, 2, 3].toSet();

// 🔹 Основні методи множин:
// numbers.add(4);                    // Додати елемент
// numbers.addAll([5, 6]);           // Додати кілька
// numbers.remove(3);                // Видалити
// numbers.contains(2);              // Перевірити наявність
// numbers.length;                   // Кількість елементів

// 🔹 Операції з множинами:
// set1.intersection(set2);          // Пересічення (спільні елементи)
// set1.union(set2);                 // Об'єднання (всі унікальні)
// set1.difference(set2);            // Різниця (є в set1, немає в set2)

// ========== СЛОВНИКИ (Map) ==========

// 🔹 Створення словників:
// Map<String, int> scores = {'Іван': 85, 'Марія': 92};
// Map<String, int> empty = <String, int>{};
// Map<String, int> fromEntries = Map.fromEntries([MapEntry('a', 1)]);

// 🔹 Основні методи словників:
// scores['Петро'] = 78;             // Додати/змінити
// scores.putIfAbsent('Анна', () => 90); // Додати якщо немає
// scores.remove('Іван');            // Видалити
// scores.containsKey('Марія');      // Перевірити ключ
// scores.containsValue(85);         // Перевірити значення
// scores.length;                    // Кількість пар

// 🔹 Доступ до даних:
// scores.keys;                      // Всі ключі
// scores.values;                    // Всі значення
// scores.entries;                   // Всі пари ключ-значення
// scores['Іван'];                   // Значення за ключем

// 🔹 Перетворення словників:
// scores.entries.where((e) => e.value > 80).toList();  // Фільтрація
// scores.updateAll((k, v) => v + 5);                   // Оновити всі значення
// scores.entries.toList()..sort((a, b) => b.value.compareTo(a.value)); // Сортування

// ========== ЦИКЛИ ==========

// 🔹 Цикл for з індексом:
// for (int i = 0; i < list.length; i++) {
//   print('$i: ${list[i]}');
// }

// 🔹 Цикл for-in:
// for (String item in list) {
//   print(item);
// }

// 🔹 Цикл по словнику:
// for (MapEntry<String, int> entry in map.entries) {
//   print('${entry.key}: ${entry.value}');
// }

// 🔹 forEach:
// list.forEach((item) => print(item));
// map.forEach((key, value) => print('$key: $value'));

// ========== КОРИСНІ ФУНКЦІЇ ==========

// 🔹 Математичні операції:
// numbers.reduce((a, b) => a + b);     // Сума
// numbers.reduce((a, b) => a > b ? a : b); // Максимум
// numbers.reduce((a, b) => a < b ? a : b); // Мінімум
// numbers.fold<double>(0, (sum, n) => sum + n) / numbers.length; // Середнє

// 🔹 Умови:
// numbers.any((n) => n > 10);         // Чи є хоча б один > 10
// numbers.every((n) => n > 0);        // Чи всі > 0
// numbers.where((n) => n % 2 == 0);   // Парні числа
// numbers.firstWhere((n) => n > 5);   // Перший > 5

// 🔹 Перетворення типів:
// list.toSet();                       // Список → Множина
// set.toList();                       // Множина → Список
// 'текст'.split('');                  // Рядок → Список символів
// list.join(', ');                    // Список → Рядок

// ========== ГЕНЕРАЦІЯ ВИПАДКОВИХ ДАНИХ ==========

// 🔹 Випадкові числа:
// import 'dart:math';
// Random random = Random();
// int randomInt = random.nextInt(100);        // 0-99
// double randomDouble = random.nextDouble();  // 0.0-1.0
// int randomInRange = 10 + random.nextInt(40); // 10-49

// 🔹 Список випадкових чисел:
// List<int> randomList = List.generate(10, (_) => Random().nextInt(100));

// ========== ТИПОВІ ПОМИЛКИ ==========

// ❌ Неправильно:
// numbers[100];  // Вийде за межі списку
// map['неіснуючий_ключ'];  // Поверне null

// ✅ Правильно:
// if (index < numbers.length) numbers[index];
// map['ключ'] ?? 'default';  // Значення за замовчуванням
