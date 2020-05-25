import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entity/Category.dart';
import 'package:todo_app/domain/entity/ToDo.dart';

void main() {
  ToDo todo;

  setUp(() {
    todo = ToDo();
  });

  test(
    'Check default year params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.year, test.year);
    },
  );

  test(
    'Check default month params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.month, test.month);
    },
  );

  test(
    'Check default day params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.day, test.day);
    },
  );

  test(
    'Check default order params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.order, test.order);
    },
  );

  test(
    'Check default text params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.text, test.text);
    },
  );

  test(
    'Check default isDone params',
    () async {
      const test = ToDo();
      // act
      final exprected = ToDo(
        year: 0,
        month: 0,
        day: 0,
        order: 0,
        text: '',
        isDone: false,
        categoryId: Category.ID_DEFAULT,
      );
      // assert
      expect(exprected.isDone, test.isDone);
    },
  );

  test(
    'Key should calculate properly',
    () async {
      const year = 2020;
      const month = 12;
      const day = 12;
      const order = 1;

      final test = ToDo(year: year, month: month, day: day, order: order);

      // act
      final exprected = '$year-$month-$day-$order';
      // assert
      expect(exprected, test.key);
    },
  );

  test(
    'Should change Day by Build method',
    () async {
      final exprected = ToDo(day: 11);

      // act
      final result = todo.buildNew(day: 11);

      // assert
      expect(exprected.day, result.day);
    },
  );

  test(
    'Should change Month by Build method',
    () async {
      final exprected = ToDo(month: 11);

      // act
      final result = todo.buildNew(month: 11);

      // assert
      expect(exprected.month, result.month);
    },
  );

  test(
    'Should change Year by Build method',
    () async {
      final exprected = ToDo(year: 11);

      // act
      final result = todo.buildNew(year: 11);

      // assert
      expect(exprected.year, result.year);
    },
  );

  test(
    'Should change Order by Build method',
    () async {
      final exprected = ToDo(order: 1);

      // act
      final result = todo.buildNew(order: 1);

      // assert
      expect(exprected.order, result.order);
    },
  );

  test(
    'Should change Text by Build method',
    () async {
      final exprected = ToDo(text: 'test');

      // act
      final result = todo.buildNew(text: 'test');

      // assert
      expect(exprected.text, result.text);
    },
  );

  test(
    'Should change isDonw by Build method',
    () async {
      final exprected = ToDo(isDone: true);

      // act
      final result = todo.buildNew(isDone: true);

      // assert
      expect(exprected.isDone, result.isDone);
    },
  );

  test(
    'Should change categoryId by Build method',
    () async {
      final exprected = ToDo(categoryId: 1);

      // act
      final result = todo.buildNew(categoryId: 1);

      // assert
      expect(exprected.categoryId, result.categoryId);
    },
  );
}
