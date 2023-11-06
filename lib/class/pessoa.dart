class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  String returnStatusIMC() {
    if (_altura == 0.0) {
      return 'Altura não pode ser 0';
    }
    if (_peso == 0.0) {
      return 'Peso não pode ser 0';
    }

    double imc = calculateIMC();
    if (imc < 16.0) {
      return 'Magreza grave';
    } else if (imc >= 16 && imc < 17.0) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25.0) {
      return 'Saudável';
    } else if (imc >= 25.0 && imc < 30.0) {
      return 'Sobrepeso';
    } else if (imc >= 30.0 && imc < 35.0) {
      return 'Obesidade Grau I';
    } else if (imc >= 35.0 && imc < 40.0) {
      return 'Obesidade Grau II (severa)';
    } else {
      return 'Obesidade Grau III (mórbida)';
    }
  }

  double calculateIMC() {
    double imc = _peso / (_altura * _altura);
    return imc;
  }
}
