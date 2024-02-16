// ignore_for_file: avoid_print

void main() {
  final s1 = Singleton.instance;
  final s2 = Singleton.instance;

  if (s1 == s2) {
    print('Singleton works, both variables contain the same instance.');
  } else {
    print('Singleton failed, variables contain different instances.');
  }
}

class Singleton {
  static Singleton? _instance;

  /// private constructors
  Singleton._();

  /// The static method that controls the access to the singleton instance.
  ///
  /// This implementation let you subclass the Singleton class while keeping
  /// just one instance of each subclass around.
  static Singleton get instance {
    _instance ??= Singleton._();
    return _instance!;
  }
}
