import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_final/controller/imc.dart';

void main() {
  double alt = 173;
  double pes = 75.00;

  test('Calcula o IMC', () {
    IMC imc = IMC();
    imc.altura = alt;
    imc.peso = pes;
    imc.calculo();

    expect(imc.imc, pes / (alt * alt));
  });

  test('Classifica o IMC -> Obesidade Grau I', () {
    IMC imc = IMC();
    imc.imc = 32.5;
    String aux = imc.classifica();

    expect(aux, 'Obesidade Grau I');
  });

  test('Classifica o IMC -> Obesidade Grau II', () {
    IMC imc = IMC();
    imc.imc = 35.5;
    String aux = imc.classifica();

    expect(aux, 'Obesidade Grau II');
  });

  test('Classifica o IMC -> Obesidade Grau III', () {
    IMC imc = IMC();
    imc.imc = 40;
    String aux = imc.classifica();

    expect(aux, 'Obesidade Grau III');
  });

  test('Classifica o IMC', () {
    IMC imc = IMC();
    imc.altura = alt;
    imc.peso = pes;
    imc.calculo();
    String aux = imc.res;

    expect(aux, 'Abaixo do Peso');
  });
}
