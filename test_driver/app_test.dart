// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final exampleTaskMessage = 'Test new task for today';

  FlutterDriver driver;

  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  tearDownAll(() async {
    if (driver != null) {
      driver.close();
    }
  });

  test('Check App is started', () async {
    await driver.waitFor(find.byType('MaterialApp'));

    final health = await driver.checkHealth();

    expect(health.status, HealthStatus.ok);
  });

  /// ---------- 

  group('Enable lock screen and test | ', () {
    test('Go to Settings page', () async {
      // First, tap the button.

      final settingsBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Settings'));

      await driver.tap(settingsBtn);

      // Then, verify the counter text is incremented by 1.
      //expect(await driver.getText(largeTitleCategory), "Каталог");
    });

    test('Create LockScreen password', () async {
      final lockScreenSwitcher = find.ancestor(of: find.text('LockScreen'), matching: find.byType('InkWell'));

      await driver.tap(lockScreenSwitcher);

      await driver.waitFor(find.byType('AlertDialog'));
    });

    test('Accept enable', () async {
      final okBtn = find.ancestor(of: find.text('Ok'), matching: find.byType('FlatButton'));

      await driver.tap(okBtn);

      await driver.waitFor(find.byType('SettingsScreen'));
    });

    test('Set password | 0000', () async {
      final zeroBtn = find.ancestor(of: find.text('0'), matching: find.byType('InkWell'));

      for (var i = 0; i < 4; i++) {
        await driver.tap(zeroBtn);
      }
    });

    test('Confirm password | 0000', () async {
      final zeroBtn = find.ancestor(of: find.text('0'), matching: find.byType('InkWell'));

      for (var i = 0; i < 4; i++) {
        await driver.tap(zeroBtn);
      }

      await driver.waitFor(find.text('Password has been set successfully!'));
    });

    test('Enable LockScreen', () async {
      final lockScreenSwitcher = find.ancestor(of: find.text('LockScreen'), matching: find.byType('InkWell'));

      await driver.tap(lockScreenSwitcher);
    });
  });

  group('Page transitions A-B-A | ', () {
    test('Go to Settings page', () async {
      final settingsBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Settings'));

      await driver.tap(settingsBtn);

      await driver.waitFor(find.byType('SettingsScreen'));
    });

    test('Go to Record page', () async {
      final recordBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Record'));

      await driver.tap(recordBtn);

      await driver.waitFor(find.byType('WeekScreen'));
    });

    test('Go to Settings page', () async {
      final settingsBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Settings'));

      await driver.tap(settingsBtn);

      await driver.waitFor(find.byType('SettingsScreen'));
    });
  });

  group('Record page for week | ', () {
    test('Go to Record page', () async {
      final recordBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Record'));

      await driver.tap(recordBtn);

      await driver.waitFor(find.byType('WeekScreen'));
    });

    test('Go to prev Week', () async {
      final btn = find.byValueKey('prevWeekBtn');

      await driver.tap(btn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Go to next Week', () async {
      final btn = find.byValueKey('nextWeekBtn');

      await driver.tap(btn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Fill CHECK POINTS', () async {
      final inputForm = find.ancestor(of: find.text('Anything to remind yourself?'), matching: find.byType('AppTextField'));
      final exampleText = 'Test check point message';

      await driver.tap(inputForm); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });
  });

  group('Record page memo | ', () {
    test('Select current day', () async {
      final today = find.ancestor(of: find.text('TODAY'), matching: find.byType('InkWell'));

      await driver.tap(today);

      await driver.waitFor(find.byType('DayScreen'));
    });

    test('Write memo for today current day', () async {
      final inputForm = find.ancestor(of: find.text('Memo for today. Anything.'), matching: find.byType('AppTextField'));
      final exampleText = 'Test memo message';

      await driver.tap(inputForm); // acquire focus
      await driver.enterText(exampleText);
      await driver.waitFor(find.text(exampleText));
    });

    test('Press Add Todo button', () async {
      final addBtn = find.byValueKey('addTodoBtn');

      await driver.tap(addBtn);

      await driver.waitFor(find.byType('DayScreen'));
    });

    test('Write new Task', () async {
      final inputForm = find.ancestor(of: find.text('Add Task'), matching: find.byType('AppTextField'));

      await driver.tap(inputForm); // acquire focus
      await driver.enterText(exampleTaskMessage);
      await driver.waitFor(find.text(exampleTaskMessage));
    });

    test('Confirm adding Task', () async {
      final addBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Add'));

      await driver.tap(addBtn);

      // await driver.waitFor(find.descendant(of: find.text('Add Task'), matching: find.byType('AppTextField')));
    });

    test('Close dialog', () async {
      final addBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Add'));

      await driver.tap(addBtn);

      // await driver.waitFor(find.descendant(of: find.text('Add Task'), matching: find.byType('AppTextField')));
    });

    test('Go to prev Day', () async {
      final btn = find.byValueKey('prevDayBtn');

      await driver.tap(btn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Go to next Day', () async {
      final btn = find.byValueKey('nextDayBtn');

      await driver.tap(btn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Open writed Task', () async {
      final inputForm = find.ancestor(of: find.text(exampleTaskMessage), matching: find.byType('InkWell'));

      await driver.tap(inputForm);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Modify writed Task', () async {
      final inputForm = find.ancestor(of: find.text(exampleTaskMessage), matching: find.byType('InkWell'));
      final modifyText = ' modify';

      await driver.tap(inputForm);
      await driver.enterText(exampleTaskMessage + modifyText);
      await driver.waitFor(find.text(exampleTaskMessage + modifyText));
    });

    test('Apply Modify', () async {
      final addBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Modify'));

      await driver.tap(addBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Complete Task', () async {
      final checkBtn = find.byValueKey('checkboxCompleteTask');

      await driver.tap(checkBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Accept dialog', () async {
      final okBtn = find.ancestor(of: find.text('Ok'), matching: find.byType('FlatButton'));

      await driver.tap(okBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Tap Cancel button', () async {
      final cancelBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Cancel'));

      await driver.tap(cancelBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Tap Cancel button', () async {
      final backBtn = find.byValueKey('dayBackButton');

      await driver.tap(backBtn);

      await driver.waitUntilNoTransientCallbacks();
    });
  });

  group('Test lock screen functionality | ', () {
    test('Go to Settings page', () async {
      final settingsBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Settings'));

      await driver.tap(settingsBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Tap Reset Password', () async {
      final settingsBtn = find.descendant(of: find.byType('InkWell'), matching: find.text('Reset Password'));

      await driver.tap(settingsBtn);

      await driver.waitUntilNoTransientCallbacks();
    });

    test('Set current password | 0000', () async {
      final zeroBtn = find.ancestor(of: find.text('0'), matching: find.byType('InkWell'));

      for (var i = 0; i < 4; i++) {
        await driver.tap(zeroBtn);
      }
    });

    test('Write new password | 1111', () async {
      final zeroBtn = find.ancestor(of: find.text('1'), matching: find.byType('InkWell'));

      for (var i = 0; i < 4; i++) {
        await driver.tap(zeroBtn);
      }
    });

    test('Confirm new password | 1111', () async {
      final zeroBtn = find.ancestor(of: find.text('1'), matching: find.byType('InkWell'));

      for (var i = 0; i < 4; i++) {
        await driver.tap(zeroBtn);
      }
    });
  });
}
