import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entity/DayMemo.dart';
import 'package:todo_app/domain/entity/DayRecord.dart';
import 'package:todo_app/domain/entity/ToDoRecord.dart';

void main() {
  DayRecord record;

  const testDayMemo = DayMemo(year: 2020, month: 12, day: 11);

  setUp(() {
    record = DayRecord(dayMemo: testDayMemo, toDoRecords: [], isToday: false);
  });

  test(
    'should return new Build by calling static method',
    () async {
      // arrange

      // act
      final result = record.buildNew();

      // assert
      expect(result.runtimeType, record.runtimeType);
    },
  );

  test(
    'should change only toDoRecords with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayRecord(toDoRecords: [ToDoRecord()]);

      // act
      final result = record.buildNew(toDoRecords: [ToDoRecord()]);

      // assert
      expect(exprected.toDoRecords.length, result.toDoRecords.length);
    },
  );

  test(
    'should change only dayMemo with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayRecord(dayMemo: DayMemo());

      // act
      final result = record.buildNew(dayMemo: DayMemo());

      // assert
      expect(exprected.dayMemo.runtimeType, result.dayMemo.runtimeType);
    },
  );

  test(
    'should change only isToday with new Build by calling static method',
    () async {
      // arrange
      final exprected = DayRecord(isToday: true);

      // act
      final result = record.buildNew(isToday: true);

      // assert
      expect(exprected.isToday, result.isToday);
    },
  );

  test(
    'should check key before update dayMemo',
    () async {
      // arrange
      final result = record.buildNewDayMemoUpdated(testDayMemo);

      // assert
      expect(result.dayMemo.year, testDayMemo.year);
    },
  );

  test(
    'should update dayMemo',
    () async {
      const newDayMemo = DayMemo(year: 2020, month: 12, day: 11);
      // arrange
      final result = record.buildNewDayMemoUpdated(newDayMemo);

      // assert
      expect(result.dayMemo.year, newDayMemo.year);
    },
  );
}
