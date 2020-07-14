void main() {
  int idade = 1;

  // while (idade < 18) {
  //   print(idade.toString() + " É menor que 18 anos");
  //   idade++;
  // }

  while (true) {
    print(idade.toString() + " anos");
    idade++;
    if (idade == 110) {
      print("Seu limite máximo de vida é de: " + idade.toString() + " anos");
      break;
    }
  }
}
