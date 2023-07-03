class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }
}

void main() {
  Retangulo retangulo = Retangulo(10.0, 9.999999999);
  double area = retangulo.calcularArea();
  print("Área do retângulo: $area");
}
