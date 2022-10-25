import 'dart:io';

main() {
  calculoImc();
}

calculoImc() {
  print("Digite o seu peso: ");
  String textPeso = stdin.readLineSync()!;
  int peso = int.parse(textPeso);

  print("Digite a sua altura: ");
  String textAltura = stdin.readLineSync()!;
  double altura = double.parse(textAltura);

  double calc = peso / (altura * altura);

  imprimirResultado(calc);
}

imprimirResultado(double calc) {
  if (calc < 18.5) {
    print("Abaixo do Peso");
  } else if (calc > 18.5 && calc < 24.9) {
    print("Peso Normal");
  } else if (calc > 25 && calc < 29.9) {
    print("Sobrepeso");
  } else if (calc > 30 && calc < 34.9) {
    print("Obesidade Grau 1");
  } else if (calc > 35 && calc < 39.9) {
    print("Obesidade Grau 2");
  } else {
    print("Obesidade Grau 3");
  }
}
