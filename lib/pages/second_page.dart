import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/botao_widget.dart';

class SecondPage extends StatelessWidget {
  final String nome;
  final String tipo;
  final String url;
  const SecondPage({super.key, required this.nome, required this.tipo, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Navegação + Pacotes + APIs"),
          backgroundColor: const Color.fromARGB(255, 16, 124, 213),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: $nome", textAlign: TextAlign.left),
              Text("Tipo: $tipo", textAlign: TextAlign.left),
              Text("URL: $url", textAlign: TextAlign.left),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: BotaoWidget(
                  texto: "Voltar para a página inicial",
                  funcao: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
