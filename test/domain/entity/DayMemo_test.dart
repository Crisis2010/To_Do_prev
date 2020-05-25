import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entity/DayMemo.dart';

void main() {
  DayMemo dayMemo;

  const defaultParams = DayMemo(year: 0, month: 0, day: 0, text: '', hint: '', isExpanded: true);

  setUp(() {
    dayMemo = DayMemo(year: 2020, month: 12, day: 12);
  });

  test(
    'should return new Build by calling static method',
    () async {
      // act
      final result = dayMemo.buildNew();
      // assert
      expect(result.runtimeType, dayMemo.runtimeType);
    },
  );

  test(
    'should have default day param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.day, defaultParams.day);
    },
  );

  test(
    'should have default year param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.year, defaultParams.year);
    },
  );

  test(
    'should have default month param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.month, defaultParams.month);
    },
  );

  test(
    'should have default text param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.text, defaultParams.text);
    },
  );

  test(
    'should have default hint param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.hint, defaultParams.hint);
    },
  );

  test(
    'should have default isExpanded param',
    () async {
      // act
      const memo = DayMemo();
      // assert
      expect(memo.isExpanded, defaultParams.isExpanded);
    },
  );

  test(
    'should change only Year with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(year: 2021);

      // act
      final result = dayMemo.buildNew(year: 2021);

      // assert
      expect(exprected.year, result.year);
    },
  );

  test(
    'should change only Day with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(day: 11);

      // act
      final result = dayMemo.buildNew(day: 11);

      // assert
      expect(exprected.day, result.day);
    },
  );

  test(
    'should change only Month with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(month: 11);

      // act
      final result = dayMemo.buildNew(month: 11);

      // assert
      expect(exprected.month, result.month);
    },
  );

  test(
    'should change only Month with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(text: 'test');

      // act
      final result = dayMemo.buildNew(text: 'test');

      // assert
      expect(exprected.text, result.text);
    },
  );

  test(
    'should change only Month with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(hint: '');

      // act
      final result = dayMemo.buildNew(hint: '');

      // assert
      expect(exprected.hint, result.hint);
    },
  );

  test(
    'should change only Month with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayMemo(isExpanded: true);

      // act
      final result = dayMemo.buildNew(isExpanded: true);

      // assert
      expect(exprected.isExpanded, result.isExpanded);
    },
  );

  test(
    'key getter must calculate properly',
    () async {
      const day = 12;
      const month = 12;
      const year = 2020;

      // arrange
      final exprected = '$year-$month-$day';

      // assert
      expect(exprected, dayMemo.key);
    },
  );
}
