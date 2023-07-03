import 'dart:math';

class Pessoa {
  String _nome;
  int _idade;
  double _altura;

  String get nome => _nome;
  int get idade => _idade;
  double get altura => _altura;

  set idade(int value) {
    if (value >= 0) {
      _idade = value;
    } else {
      throw ArgumentError("A idade deve ser um valor maior ou igual a zero.");
    }
  }

  Pessoa(this._nome, this._idade, this._altura);

  static int gerarIdadeAleatoria() {
    Random random = Random();
    return random.nextInt(100) + 1;
  }

  static double gerarAlturaAleatoria() {
    Random random = Random();
    return 1.0 + random.nextDouble() * (2.3 - 1.0);
  }
}

void main() {
  String nome = "Thales";
  int idade = Pessoa.gerarIdadeAleatoria();
  double altura = Pessoa.gerarAlturaAleatoria();

  Pessoa pessoa = Pessoa(nome, idade, altura);

  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura}");
}
