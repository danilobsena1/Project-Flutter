// var é uma variavel onde você consegue inserir qualquer tipo de dados.

void main() {
  var nome;
  var idade;
  var altura;
  var status;
  var lista;
  var tipoMap;

  nome = "Pedro";
  idade = 20;
  altura = 1.90;
  status = false;
  lista = ["Ovo", "Açucar", "Café", "Leite", "Farinha"];
  tipoMap = {
    "nome": "Pedro",
    "idade": 20,
    "altura": 1.90,
    "trabalhando": false,
    20: "Vinte anos"
  };

  print(nome);
  print(idade);
  print(altura);
  print(status);
  print(lista);
  print(tipoMap);
}
