import 'package:calc_imc/calc_imc.dart' as app;
import 'package:test/test.dart';

void main() {
  // teste para calcular o imc
  test('calculate imc', () {
    expect(app.calculateIMC(1.7, 70, 'Akyla'), 24.22);
  });
}
