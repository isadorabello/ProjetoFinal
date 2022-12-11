import 'package:flutter/material.dart';

import '../controller/menu.dart';
import '../controller/tmb.dart';

class TMBPage extends StatefulWidget {
  const TMBPage({Key? key}) : super(key: key);

  @override
  State<TMBPage> createState() => _TMBPageState();
}

class _TMBPageState extends State<TMBPage> {
  double altura = 0;
  double peso = 0;
  int idade = 0;
  int atv = 0;
  TMB tmb = TMB();
  bool isChecked = false;

  onPressed() {
    tmb.altura = altura;
    tmb.peso = peso;
    tmb.idade = idade;
    tmb.atv = atv;
    tmb.sexo = isChecked;

    setState(() {
      tmb.calculo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMB'),
      ),
      drawer: const Menu(),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.00),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('TMB: ', style: TextStyle(fontSize: 25)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text("${tmb.tmb} kcal",
                          style: const TextStyle(fontSize: 25)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (text) {
                      altura = double.parse(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Entre com a sua altura (CM)',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      peso = double.parse(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Entre com a seu peso (KG)',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      idade = int.parse(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Entre com a sua idade',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text.rich(
                    TextSpan(
                      text:
                          ' Selecione uma opção:\n 0-sedentário\n 1-levemente ativo\n 2-moderadamente ativo\n 3-altamente ativo\n 4-extremamente ativo',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      atv = int.parse(text);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Entre com a opção',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Você é do sexo feminino? ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: onPressed,
                      child: const Text('Calcular',
                          style: TextStyle(fontSize: 15)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
