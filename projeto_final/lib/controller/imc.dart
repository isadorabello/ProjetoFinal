class IMC {
  double altura = 0;
  double peso = 0;
  double imc = 0;
  String res = '';

  void calculo() {
    imc = peso / (altura * altura);
    res = classifica();
  }

  String classifica() {
    if (imc < 18.6) {
      return 'Abaixo do Peso';
    } else if (imc >= 18.6 && imc < 24.9) {
      return 'Peso Ideal';
    } else if (imc >= 24.9 && imc < 29.9) {
      return 'Levemente Acima do Peso';
    } else if (imc >= 29.9 && imc < 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 34.9 && imc < 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }
  
}
