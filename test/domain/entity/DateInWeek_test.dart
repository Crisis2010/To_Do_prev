import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entity/DateInWeek.dart';

void main() {
  DateInWeek date;

  const nthWeek = 1;
  const testMonth = 12;
  const testYear = 2020;

  setUp(() {
    date = DateInWeek(month: testMonth, year: testYear, nthWeek: nthWeek);
  });

  test(
    'Month should return Zero if not filled',
    () async {
      // act
      const DateInWeek localDate = DateInWeek();
      // arrange
      final result = localDate.month;
      // assert
      expect(result, 0);
    },
  );

  test(
    'nthWeek should return Zero if not filled',
    () async {
      // act
      const DateInWeek localDate = DateInWeek();
      // arrange
      final result = localDate.nthWeek;
      // assert
      expect(result, 0);
    },
  );

  test(
    'Year should return Zero if not filled',
    () async {
      // act
      const DateInWeek localDate = DateInWeek();
      // arrange
      final result = localDate.year;
      // assert
      expect(result, 0);
    },
  );

  test(
    'should return Month',
    () async {
      // arrange
      final result = date.month;
      // assert
      expect(result, testMonth);
    },
  );

  test(
    'should return NthWeek',
    () async {
      // arrange
      final result = date.nthWeek;
      // assert
      expect(result, nthWeek);
    },
  );

  test(
    'should return Year',
    () async {
      // arrange
      final result = date.year;
      // assert
      expect(result, testYear);
    },
  );
}
