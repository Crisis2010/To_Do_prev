import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/domain/entity/Category.dart';
import 'package:todo_app/domain/entity/ToDo.dart';
import 'package:todo_app/domain/entity/ToDoRecord.dart';

void main() {
  ToDoRecord todo;

  setUp(() {
    todo = ToDoRecord(category: Category(), toDo: ToDo(), isDraft: false);
  });

  test(
    'can be created from Draft',
    () async {
      // act
      final result = ToDoRecord.createDraft(DateTime(2017, 9, 7, 17, 30), 0);
      // assert
      expect(result.isDraft, true);
    },
  );

  test(
    'should have default params',
    () async {
      final defaultTest = ToDoRecord();
      // act
      final expected = ToDoRecord(
        toDo: const ToDo(),
        category: const Category(),
        isDraft: false,
      );

      // assert
      expect(defaultTest.toDo, expected.toDo);
      expect(defaultTest.category, expected.category);
      expect(defaultTest.isDraft, expected.isDraft);
    },
  );

  test(
    'should be created from static build method',
    () async {
      // act
      final expected = todo.buildNew();
      // assert
      expect(expected.hashCode != todo.hashCode, true);
    },
  );

  test(
    'should change ToDo by build method',
    () async {
      const newParam = ToDo(year: 2019);
      // act
      final expected = todo.buildNew(toDo: newParam);
      // assert
      expect(expected.toDo, newParam);
    },
  );

  test(
    'should change Category by build method',
    () async {
      const newParam = Category(id: 9);
      // act
      final expected = todo.buildNew(category: newParam);
      // assert
      expect(expected.category, newParam);
    },
  );

  test(
    'should change isDraft by build method',
    () async {
      const newParam = true;
      // act
      final expected = todo.buildNew(isDraft: newParam);
      // assert
      expect(expected.isDraft, newParam);
    },
  );
}
