import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? cotrolador;
  final String? rotulo;
  final String? hint;
  final IconData? icone;

  Editor({
    this.cotrolador,
    this.rotulo,
    this.hint,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: cotrolador,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
