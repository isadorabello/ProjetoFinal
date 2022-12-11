import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_final/controller/tmb.dart';

void main() {
  double alt = 173;
  double pes = 75.00;
  int ida = 21;
  double tax = 1.2;

  test('Calcula o TMB de uma mulher', () {
    TMB tmb = TMB();
    tmb.altura = alt;
    tmb.peso = pes;
    tmb.idade = ida;
    tmb.taxa = tax;
    int res = tmb.calculoMulher();

    expect(res, 1905);
  });

  test('Calcula o TMB', () {
    TMB tmb = TMB();
    tmb.altura = alt;
    tmb.peso = pes;
    tmb.idade = ida;
    tmb.taxa = tax;
    tmb.sexo = true;
    tmb.calculo();

    expect(tmb.tmb, 1905);
  });

  test('Calcula o TMB de um homem', () {
    TMB tmb = TMB();
    tmb.altura = alt;
    tmb.peso = pes;
    tmb.idade = ida;
    tmb.taxa = tax;
    int res = tmb.calculoHomem();

    expect(res, 2179);
  });

  test('Verifica a classificação da taxa -> Levemente Ativo', () {
    TMB tmb = TMB();
    tmb.atv = 1;
    double aux = tmb.classificar();

    expect(aux, 1.375);
  });

  test('Verifica a classificação da taxa ->  Sedentário', () {
    TMB tmb = TMB();
    tmb.atv = 0;
    double aux = tmb.classificar();

    expect(aux, 1.2);
  });

  test('Verifica a classificação da taxa -> Moderadamente Ativo', () {
    TMB tmb = TMB();
    tmb.atv = 2;
    double aux = tmb.classificar();

    expect(aux, 1.55);
  });

  test('Verifica a classificação da taxa -> Altamente Ativo', () {
    TMB tmb = TMB();
    tmb.atv = 3;
    double aux = tmb.classificar();

    expect(aux, 1.725);
  });

  test('Verifica a classificação da taxa -> Extremamente Ativo', () {
    TMB tmb = TMB();
    tmb.atv = 4;
    double aux = tmb.classificar();

    expect(aux, 1.9);
  });
}
