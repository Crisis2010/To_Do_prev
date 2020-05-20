
class InputPasswordState {
  static const MAX_FAIL_COUNT = 5;

  final String password;
  final int failCount;


  bool get showErrorMsg => failCount > 0;

  const InputPasswordState({
    this.password = '',
    this.failCount = 0,

  });

  InputPasswordState buildNew({
    String password,
    int failCount,
    bool isLoading,
  }) {
    return InputPasswordState(
      password: password ?? this.password,
      failCount: failCount ?? this.failCount,

    );
  }
}
