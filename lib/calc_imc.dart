import 'dart:io';
import 'package:calc_imc/class/pessoa.dart';
import 'package:calc_imc/exception/invalid_name_exception.dart';
import 'package:calc_imc/utils/console.dart';

void execute() {
  print('Calculadora IMC');

  String nome = Console.readStringWithText('Digite o seu nome: ');
  try {
    if (nome.trim() == '') throw InvalidNameException();
  } on InvalidNameException {
    print(InvalidNameException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double peso = Console.readDoubleWithExitText(
      'Digite o peso em KG ou S caso queira sair', 'S');

  double altura = Console.readDoubleWithExitText(
      'Digite sua altura em Metros ou S caso queira sair', 'S');

  calculateIMC(altura, peso, nome);
}

double calculateIMC(double altura, double peso, String nome) {
  double imc = peso / (altura * altura);

  Pessoa pessoa = Pessoa();
  pessoa.setNome(nome);
  pessoa.setPeso(peso);
  pessoa.setAltura(altura);

  print("Seu nome: ${pessoa.getNome()}");
  print("Sua altura ${pessoa.getAltura()}");
  print("Seu peso ${pessoa.getPeso()}");
  print("Seu imc é $imc");
  print("Seu status do IMC é ${pessoa.returnStatusIMC()}");
  return double.parse(imc.toStringAsFixed(2));
}
