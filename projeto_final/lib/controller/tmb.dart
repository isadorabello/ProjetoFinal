class TMB {
  double altura = 0;
  double peso = 0;
  double taxa = 0;
  int idade = 0;
  int tmb = 0;
  int atv = 0;
  bool sexo = true;

  void calculo() {
    taxa = classificar();
    if (sexo) {
      tmb = calculoMulher();
    } else {
      tmb = calculoHomem();
    }
  }

  int calculoMulher() {
    return (taxa * (655 + ((9.6 * peso) + (1.8 * altura) - (4.7 * idade))))
        .round();
  }

  int calculoHomem() {
    return (taxa * (66 + ((13.7 * peso) + (5 * altura) - (6.8 * idade))))
        .round();
  }

  double classificar() {
    if (atv == 0) {
      //sedentário
      return 1.2;
    } else if (atv == 1) {
      //levemente ativo
      return 1.375;
    } else if (atv == 2) {
      //moderadamente ativo
      return 1.55;
    } else if (atv == 3) {
      //altamente ativo
      return 1.725;
    } else {
      //extremamente ativo
      return 1.9;
    }
  }
}
