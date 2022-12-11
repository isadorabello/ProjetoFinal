import 'package:flutter/material.dart';
import 'package:projeto_c214/controller/imc.dart';
import 'package:projeto_c214/controller/menu.dart';

class IMCPage extends StatefulWidget {
  const IMCPage({Key? key}) : super(key: key);

  @override
  State<IMCPage> createState() => _IMCPageState();
}

class _IMCPageState extends State<IMCPage> {
  double altura = 0;
  double peso = 0;
  IMC imc = IMC();
  bool isChecked = false;

  onPressed() {
    imc.altura = altura;
    imc.peso = peso;

    setState(() {
      imc.calculo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC'),
      ),
      drawer: const Menu(),
      body: SingleChildScrollView(
          child: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.00),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('IMC: ', style: TextStyle(fontSize: 25)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(imc.res, style: const TextStyle(fontSize: 25)),
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
                    labelText: 'Entre com a sua altura (M)',
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
                height: 15,
              ),
              ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Calcular', style: TextStyle(fontSize: 15)))
            ]),
          ),
        ),
      )),
    );
  }
}
