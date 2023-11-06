import 'dart:convert';
import 'dart:io';

class Console {
  static double readDoubleWithExitText(String text, String exitValue) {
    try {
      var value = readStringWithText(text);
      // Sair do programa
      if (value == exitValue) {
        exit(0);
      }
      return double.parse(value);
    } catch (e) {
      print('Valor inválido! $e');
      exit(0);
    }
  }

  static String readStringWithText(String text) {
    print(text);
    return readInputString();
  }

  static String readInputString() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }
}
