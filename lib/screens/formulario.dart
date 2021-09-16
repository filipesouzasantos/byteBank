import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/traferencias.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Criando tranferência";
const _rotulo1 = "Número da conta";
const _rotulo2 = "Valor da Tranferência";
const _hint1 = "00000";
const _hint2 = "00.00";
const _btn_name = "Confirmar";

class FormularioTranferencia extends StatefulWidget {
  final TextEditingController? _controladorCampoConta = TextEditingController();
  final TextEditingController? _controladorValor = TextEditingController();

  @override
  _FormularioTranferenciaState createState() => _FormularioTranferenciaState();
}

class _FormularioTranferenciaState extends State<FormularioTranferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                cotrolador: widget._controladorCampoConta,
                rotulo: _rotulo1,
                hint: _hint1),
            Editor(
                cotrolador: widget._controladorValor,
                rotulo: _rotulo2,
                hint: _hint2,
                icone: Icons.monetization_on),
            ElevatedButton(
                onPressed: () => _criaTranferencia(context),
                child: Text(_btn_name))
          ],
        ),
      ),
    );
  }

  void _criaTranferencia(BuildContext context) {
    final double? valor = double.tryParse(widget._controladorValor!.text);
    if (valor != null) {
      final transferenciaCriada =
          Tranferencias(valor, widget._controladorCampoConta!.text);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
