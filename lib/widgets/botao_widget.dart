import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotaoWidget({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: funcao,
        style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 16, 124, 213)),
                        fixedSize:
                            const MaterialStatePropertyAll(Size(200, 30)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
        child: Text(texto,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              );
  }
}
