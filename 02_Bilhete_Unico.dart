class BilheteUnico {
  final String titular;
  final double tarifa;
  double _saldo = 0.0;

  BilheteUnico(this.titular) : tarifa = 5.0;

  BilheteUnico.estudante(this.titular) : tarifa = 2.5;

  double get saldo => _saldo;

  void recarregar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print(
        'Recarga de R\$ ${valor.toStringAsFixed(2)} realizada. Novo saldo: R\$ ${_saldo.toStringAsFixed(2)}',
      );
    } else {
      print('${titular}: valor de recarga invalido');
    }
  }

  void passarCatraca() {
    if (_saldo >= tarifa) {
      _saldo -= tarifa;
      print(
        'Catraca liberada! Saldo restante: R\$ ${_saldo.toStringAsFixed(2)}',
      );
    } else {
      print('${titular}: saldo insuficiente');
    }
  }
}

void main() {
  BilheteUnico comum = BilheteUnico('Ana');
  BilheteUnico estudante = BilheteUnico.estudante('Bruno');

  comum.recarregar(12);
  comum.passarCatraca();
  comum.passarCatraca();
  comum.passarCatraca();

  estudante.recarregar(5);
  estudante.passarCatraca();
  estudante.passarCatraca();

  estudante.recarregar(-10);

  print('Saldo final de ${comum.titular}: R\$ ${comum.saldo.toStringAsFixed(2)}');
  print('Saldo final de ${estudante.titular}: R\$ ${estudante.saldo.toStringAsFixed(2)}');
}
