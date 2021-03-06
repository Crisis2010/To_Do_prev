
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  static const NEW_PASSWORD = "newPassword";
  static const CONFIRM_NEW_PASSWORD = "confirmNewPassword";
  static const CONFIRM_PASSWORD_FAIL = "confirmPasswordFail";
  static const CURRENT_PASSWORD = "currentPassword";
  static const RETRY_INPUT_PASSWORD = "retryInputPassword";
  static const CREATE_PASSWORD = "createPassword";
  static const CREATE_PASSWORD_BODY = "createPasswordBody";
  static const CREATE_PASSWORD_SUCCESS = "createPasswordSuccess";
  static const CREATE_PASSWORD_FAIL = "createPasswordFail";
  static const UNLOCK_FAIL = "unlockFail";
  static const PASSWORD_CHANGED = "passwordChanged";
  static const PASSWORD_UNCHANGED = "passwordUnchanged";
  static const CANCEL = "cancel";
  static const OK = "ok";
  static const ADD = "add";
  static const MODIFY = "modify";
  static const CREATE = "new";
  static const NO_TODOS = "noToDos";
  static const CATEGORY = "category";
  static const REMOVE_CATEGORY = "removeCategory";
  static const REMOVE_CATEGORY_BODY = "removeCategoryBody";
  static const CATEGORY_NONE = "categoryNone";
  static const ADD_TASK = "addTask";
  static const MODIFY_TASK = "modifyTask";
  static const CHOOSE_PHOTO = "choosePhoto";
  static const SETTINGS_GENERAL = "settingsGeneral";
  static const SETTINGS_USE_LOCK_SCREEN = "settingsLockScreen";
  static const SETTINGS_RESET_PASSWORD = "settingsResetPassword";
  static const SETTINGS_RECOVERY_EMAIL = "settingsRecoveryEmail";
  static const INVALID_RECOVERY_EMAIL = "invalidRecoveryEmail";
  static const SEND_TEMP_PASSWORD = "sendTempPassword";
  static const CONFIRM_SEND_TEMP_PASSWORD = "confirmSendTempPassword";
  static const CONFIRM_SEND_TEMP_PASSWORD_BODY = "confirmSendTempPasswordBody";
  static const FAILED_TO_SAVE_TEMP_PASSWORD_BY_UNKNOWN_ERROR = "failedToSaveTempPasswordByUnknownError";
  static const TEMP_PASSWORD_MAIL_SUBJECT = "tempPasswordMailSubject";
  static const TEMP_PASSWORD_MAIL_BODY = "tempPasswordMailBody";
  static const TEMP_PASSWORD_MAIL_SENT = "tempPasswordMailSent";
  static const TEMP_PASSWORD_MAIL_SEND_FAILED = "tempPasswordMailSendFailed";
  static const REMOVE_TO_DO = "removeToDo";
  static const REMOVE_TO_DO_BODY = "removeToDoBody";
  static const RECORD_NAVIGATION_TITLE = "recordNavigationTitle";
  static const SETTINGS_NAVIGATION_TITLE = "settingsNavigationTitle";
  static const CHECK_POINT_HINT = "checkPointHint";
  static const DAY_MEMO_HINT = "dayMemoHint";
  static const FIRST_TO_DO_CHECK_TITLE = "firstToDoCheckTitle";
  static const FIRST_TO_DO_CHECK_BODY = "firstToDoCheckBody";

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      NEW_PASSWORD: 'New Password',
      CONFIRM_NEW_PASSWORD: 'Confirm New Password',
      CONFIRM_PASSWORD_FAIL: 'Incorrect',
      CURRENT_PASSWORD: 'Current Password',
      RETRY_INPUT_PASSWORD: 'Retry Password',
      CREATE_PASSWORD: 'Create Password',
      CREATE_PASSWORD_BODY: 'You haven\'t set your password yet!\nGo create new password?',
      CREATE_PASSWORD_SUCCESS: 'Password has been set successfully!',
      CREATE_PASSWORD_FAIL: 'Password has not been set',
      UNLOCK_FAIL: 'Failed to unlock',
      PASSWORD_CHANGED: 'Password changed!',
      PASSWORD_UNCHANGED: 'Password not changed',
      CANCEL: 'Cancel',
      OK: 'Ok',
      ADD: 'Add',
      MODIFY: 'Modify',
      CREATE: 'Create',
      NO_TODOS: 'No TODO yet!',
      CATEGORY: 'Category',
      REMOVE_CATEGORY: 'Remove Category',
      REMOVE_CATEGORY_BODY: 'Are you sure you want to remove this category?',
      CATEGORY_NONE: 'None',
      ADD_TASK: 'Add Task',
      MODIFY_TASK: 'Modify Task',
      CHOOSE_PHOTO: 'Choose Photo',
      SETTINGS_GENERAL: 'General',
      SETTINGS_USE_LOCK_SCREEN: 'LockScreen',
      SETTINGS_RESET_PASSWORD: 'Reset Password',
      SETTINGS_RECOVERY_EMAIL: 'Recovery Email',
      INVALID_RECOVERY_EMAIL: 'Recovery email is either empty or invalid',
      SEND_TEMP_PASSWORD: 'Send Temporary Password',
      CONFIRM_SEND_TEMP_PASSWORD: 'Send Temporary Password',
      CONFIRM_SEND_TEMP_PASSWORD_BODY: 'Your previous password will be overriden by temporary password, and will be sent to your recovery email.',
      FAILED_TO_SAVE_TEMP_PASSWORD_BY_UNKNOWN_ERROR: 'Failed to save temporary password by unknown error',
      TEMP_PASSWORD_MAIL_SUBJECT: '[ToDo] Your temporary password has been set',
      TEMP_PASSWORD_MAIL_BODY: 'Your password has been set: ',
      TEMP_PASSWORD_MAIL_SENT: 'Mail has been sent! Check your recovery email.',
      TEMP_PASSWORD_MAIL_SEND_FAILED: 'Mail has not been sent. Please check your recovery email again.',
      REMOVE_TO_DO: 'Remove TODO',
      REMOVE_TO_DO_BODY: 'Are you sure you want to remove this TODO?',
      RECORD_NAVIGATION_TITLE: 'Record',
      SETTINGS_NAVIGATION_TITLE: 'Settings',
      CHECK_POINT_HINT: 'Anything to remind yourself?',
      DAY_MEMO_HINT: 'Memo for today. Anything.',
      FIRST_TO_DO_CHECK_TITLE: 'Irreversible action',
      FIRST_TO_DO_CHECK_BODY: 'We treat completing task a very valuable action. Therefore, it\'s impossible to undo completing task unless deleting it.\n(This message is shown only once.)',
    },

  };

  final Locale locale;

  AppLocalizations(this.locale);

  String get newPassword => _localizedValues[locale.languageCode][NEW_PASSWORD];
  String get confirmNewPassword => _localizedValues[locale.languageCode][CONFIRM_NEW_PASSWORD];
  String get confirmPasswordFail => _localizedValues[locale.languageCode][CONFIRM_PASSWORD_FAIL];
  String get currentPassword => _localizedValues[locale.languageCode][CURRENT_PASSWORD];
  String get retryInputPassword => _localizedValues[locale.languageCode][RETRY_INPUT_PASSWORD];
  String get createPassword => _localizedValues[locale.languageCode][CREATE_PASSWORD];
  String get createPasswordBody => _localizedValues[locale.languageCode][CREATE_PASSWORD_BODY];
  String get createPasswordSuccess => _localizedValues[locale.languageCode][CREATE_PASSWORD_SUCCESS];
  String get createPasswordFail => _localizedValues[locale.languageCode][CREATE_PASSWORD_FAIL];
  String get unlockFail => _localizedValues[locale.languageCode][UNLOCK_FAIL];
  String get passwordChanged => _localizedValues[locale.languageCode][PASSWORD_CHANGED];
  String get passwordUnchanged => _localizedValues[locale.languageCode][PASSWORD_UNCHANGED];
  String get cancel => _localizedValues[locale.languageCode][CANCEL];
  String get ok => _localizedValues[locale.languageCode][OK];
  String get add => _localizedValues[locale.languageCode][ADD];
  String get modify => _localizedValues[locale.languageCode][MODIFY];
  String get create => _localizedValues[locale.languageCode][CREATE];
  String get noToDos => _localizedValues[locale.languageCode][NO_TODOS];
  String get category => _localizedValues[locale.languageCode][CATEGORY];
  String get removeCategory => _localizedValues[locale.languageCode][REMOVE_CATEGORY];
  String get removeCategoryBody => _localizedValues[locale.languageCode][REMOVE_CATEGORY_BODY];
  String get categoryNone => _localizedValues[locale.languageCode][CATEGORY_NONE];
  String get addTask => _localizedValues[locale.languageCode][ADD_TASK];
  String get modifyTask => _localizedValues[locale.languageCode][MODIFY_TASK];
  String get choosePhoto => _localizedValues[locale.languageCode][CHOOSE_PHOTO];
  String get settingsGeneral => _localizedValues[locale.languageCode][SETTINGS_GENERAL];
  String get settingsUseLockScreen => _localizedValues[locale.languageCode][SETTINGS_USE_LOCK_SCREEN];
  String get settingsResetPassword => _localizedValues[locale.languageCode][SETTINGS_RESET_PASSWORD];
  String get settingsRecoveryEmail => _localizedValues[locale.languageCode][SETTINGS_RECOVERY_EMAIL];
  String get invalidRecoveryEmail => _localizedValues[locale.languageCode][INVALID_RECOVERY_EMAIL];
  String get sendTempPassword => _localizedValues[locale.languageCode][SEND_TEMP_PASSWORD];
  String get confirmSendTempPassword => _localizedValues[locale.languageCode][CONFIRM_SEND_TEMP_PASSWORD];
  String get confirmSendTempPasswordBody => _localizedValues[locale.languageCode][CONFIRM_SEND_TEMP_PASSWORD_BODY];
  String get failedToSaveTempPasswordByUnknownError => _localizedValues[locale.languageCode][FAILED_TO_SAVE_TEMP_PASSWORD_BY_UNKNOWN_ERROR];
  String get tempPasswordMailSubject => _localizedValues[locale.languageCode][TEMP_PASSWORD_MAIL_SUBJECT];
  String get tempPasswordMailBody => _localizedValues[locale.languageCode][TEMP_PASSWORD_MAIL_BODY];
  String get tempPasswordMailSent => _localizedValues[locale.languageCode][TEMP_PASSWORD_MAIL_SENT];
  String get tempPasswordMailSendFailed => _localizedValues[locale.languageCode][TEMP_PASSWORD_MAIL_SEND_FAILED];
  String get removeToDo => _localizedValues[locale.languageCode][REMOVE_TO_DO];
  String get removeToDoBody => _localizedValues[locale.languageCode][REMOVE_TO_DO_BODY];
  String get recordNavigationTitle => _localizedValues[locale.languageCode][RECORD_NAVIGATION_TITLE];
  String get settingsNavigationTitle => _localizedValues[locale.languageCode][SETTINGS_NAVIGATION_TITLE];
  String get checkPointHint => _localizedValues[locale.languageCode][CHECK_POINT_HINT];
  String get dayMemoHint => _localizedValues[locale.languageCode][DAY_MEMO_HINT];
  String get firstToDoCheckTitle => _localizedValues[locale.languageCode][FIRST_TO_DO_CHECK_TITLE];
  String get firstToDoCheckBody => _localizedValues[locale.languageCode][FIRST_TO_DO_CHECK_BODY];

  String getMonthAndNthWeek(int month, int nthWeek) {

      final monthName = _getMonthNameShort(month);
      switch (nthWeek) {
        case 0:
          return '1st Week of $monthName';
        case 1:
          return '2nd Week of $monthName';
        case 2:
          return '3rd Week of $monthName';
        case 3:
          return '4th Week of $monthName';
        case 4:
        default:
          return '5th Week of $monthName';
      }
  }

  String _getMonthNameShort(int month) {
    return month == DateTime.january ? 'Jan'
      : month == DateTime.february ? 'Feb'
      : month == DateTime.march ? 'Mar'
      : month == DateTime.april ? 'Apr'
      : month == DateTime.may ? 'May'
      : month == DateTime.june ? 'Jun'
      : month == DateTime.july ? 'Jul'
      : month == DateTime.august ? 'Aug'
      : month == DateTime.september ? 'Sep'
      : month == DateTime.october ? 'Oct'
      : month == DateTime.november ? 'Nov'
      : 'Dec';
  }

  String _getMonthName(int month) {
    return month == DateTime.january ? 'January'
      : month == DateTime.february ? 'February'
      : month == DateTime.march ? 'March'
      : month == DateTime.april ? 'April'
      : month == DateTime.may ? 'May'
      : month == DateTime.june ? 'June'
      : month == DateTime.july ? 'July'
      : month == DateTime.august ? 'August'
      : month == DateTime.september ? 'Sepember'
      : month == DateTime.october ? 'October'
      : month == DateTime.november ? 'November'
      : 'December';
  }

  String getDayPreviewTitle(int month, int day, int weekday) {
    final weekdayString = _getWeekDayName(weekday);
    return '$weekdayString, ${_getMonthName(month)} $day';
  }

  String getDayScreenTitle(int month, int day, int weekday) {
    final weekdayString = _getWeekDayName(weekday);
    return '$weekdayString, ${_getMonthName(month)} $day';

  }

  String _getWeekDayName(int weekDay) {

      if (weekDay == DateTime.monday) {
        return 'Mon';
      } else if (weekDay == DateTime.tuesday) {
        return 'Tue';
      } else if (weekDay == DateTime.wednesday) {
        return 'Wed';
      } else if (weekDay == DateTime.thursday) {
        return 'Thu';
      } else if (weekDay == DateTime.friday) {
        return 'Fri';
      } else if (weekDay == DateTime.saturday) {
        return 'Sat';
      } else {
        return 'Sun';
      }
  }

  String getMoreToDos(int count) {

      return ' and $count more';

  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);

  @override
  bool shouldReload(LocalizationsDelegate old) => false;

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }
}