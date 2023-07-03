class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  double desconto(double percentual) {
    double valorDesconto = (percentual / 100) * preco;
    double novoPreco = preco - valorDesconto;
    return novoPreco;
  }
}

void main() {
  List<Produto> produtos = [
    Produto("Produto A", 100.0),
    Produto("Produto B", 200.0),
    Produto("Produto C", 300.0),
    Produto("Produto D", 400.0),
    Produto("Produto E", 500.0),
  ];

  double percentualDesconto = 10.0; 

  for (Produto produto in produtos) {
    double novoPreco = produto.desconto(percentualDesconto);
    print("Novo preço do produto ${produto.nome} (com desconto): $novoPreco");
  }
}
