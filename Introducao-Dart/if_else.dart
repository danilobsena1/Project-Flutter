void main() {
  String sexo = "Masculino";
  int idade = 18;

  // if (sexo == "Feminino") {
  //   print("Sexo feminino");
  // } else if (sexo == "Masculino") {
  //   print("Sexo masculino");
  // } else {
  //   print("È boneco");
  // }

  print("\t##_ALISTAMENTO MILITAR_##");
  print("");
  if (idade >= 18 && sexo == "Masculino") {
    print("Alistamento militar obrigatório");
  } else {
    print("Você não pode participar do alistamento militar");
  }
}
