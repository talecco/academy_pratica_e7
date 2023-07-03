class ContaBancaria {
  double saldo;
  String titular;

  ContaBancaria(this.saldo, this.titular);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente");
    }
  }
}

void main() {
  ContaBancaria conta = ContaBancaria(9999.99, "Thales");
  print("Saldo atual: ${conta.saldo}");
}
