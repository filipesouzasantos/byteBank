import 'package:bytebank/models/traferencias.dart';
import 'package:flutter/material.dart';

class ItemTranferencia extends StatelessWidget {
  final Tranferencias _tranferencia;

  const ItemTranferencia(this._tranferencia);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_tranferencia.valor.toString()),
          subtitle: Text(_tranferencia.numeroConta.toString()),
          // trailing: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
