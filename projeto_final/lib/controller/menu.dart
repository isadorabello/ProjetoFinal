import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(height: 30),
          ListTile(
            title: const Text("IMC"),
            leading: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/imc");
            },
          ),
          ListTile(
            title: const Text("TMB"),
            leading: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/tmb");
            },
          ),
        ],
      ),
    );
  }
}
