void main() {
  saudacao("Pedro");

  int resultadoSimulador = simulador(2020, 1985);
  print("idade: " + resultadoSimulador.toString() + " anos");

  print(simulador(2020, 1985));

  print(calcArea(15.60));

  print("Area: " + calcArea(15.60).toString());
}

//funções

void saudacao(String nome) {
  String name = nome;
  print("Seja bem vindo " + name);
}

int simulador(int anoAtual, int anoNascimento) {
  int resultado = anoAtual - anoNascimento;
  return resultado;
}

// Outro modelo de função

double pi = 3.14;
double calcArea(double raio) => pi * raio * raio;
