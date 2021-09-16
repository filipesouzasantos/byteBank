class Tranferencias {
  final double valor;
  final String numeroConta;

  Tranferencias(this.valor, this.numeroConta);

  @override
  String toString() {
    return "Valor: $valor Numero da conta: $numeroConta";
  }
}
