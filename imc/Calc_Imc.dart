import 'dart:io';
main() {
  print("Digite o seu peso: ");
  var input = stdin.readLineSync();
  var peso = int.parse(input!);

  print("Digite a sua altura: ");
  var input2 = stdin.readLineSync();
  var altura = double.parse(input2!);

  var calc = peso / (altura * altura);

  if (calc < 18.5 ) {
    print("Abaixo do Peso");
  } else if (calc > 18.5 && calc < 24.9) {
    print("Peso Normal");
  } else if (calc > 25 && calc < 29.9) {
    print("Sobrepeso");
  } else if(calc > 30 && calc < 34.9){
    print("Obesidade Grau 1");
  }else if(calc > 35 && calc < 39.9){
    print("Obesidade Grau 2");
  }else{
    print("Obesidade Grau 3");
  }
  
}
