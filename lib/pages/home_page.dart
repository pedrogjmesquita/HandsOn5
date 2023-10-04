import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/second_page.dart';
import 'package:flutter_application/widgets/botao_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegação + Pacotes + APIs"),
        backgroundColor: const Color.fromARGB(255, 16, 124, 213),
      ),
      body: Center(
        child: BotaoWidget(
          texto: "Requisição Pokemon",
          funcao: () async {
            var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/${1 + Random().nextInt(800)}/');
            var response = await http.get(url);
            var dados = jsonDecode(response.body);
            String nome = dados['name'];
            String tipo = dados['types'][0]['type']['name'];
            // ignore: use_build_context_synchronously
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                      nome: nome,
                      tipo: tipo,
                      url: "https://pokeapi.co/api/v2/pokemon/$nome"),
                ));
          },
        ),
      ));
  }
}
