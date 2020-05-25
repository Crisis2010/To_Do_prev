import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/AppColors.dart';
import 'package:todo_app/domain/entity/HomeChildScreenItem.dart';

void main() {
  HomeChildScreenItem child;

  const defaultHomeChildParams = HomeChildScreenItem(
    key: '',
    iconPath: '',
    titleColor: AppColors.TEXT_BLACK_LIGHT,
  );

  setUp(() {
    child = HomeChildScreenItem();
  });

  test(
    'Default static KEY_RECORD',
    () async {
      expect(HomeChildScreenItem.KEY_RECORD, 'record');
    },
  );

  test(
    'Default static KEY_RECORD',
    () async {
      expect(HomeChildScreenItem.KEY_SETTINGS, 'settings');
    },
  );

  test(
    'Shoult have default params constructor',
    () async {
      expect(child.key, defaultHomeChildParams.key);
    },
  );
}
