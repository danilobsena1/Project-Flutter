void main() {
  Map usuario = {
    "nome": "Pedro",
    "idade": 20,
    "altura": 1.90,
    "trabalhando": false,
    20: "Vinte anos"
  };

  print(usuario.length);
  print(usuario);
  print("");

  print(usuario["nome"]);
  print(usuario["idade"]);
  print(usuario["altura"]);
  print(usuario["trabalhando"]);
  print(usuario[20]);
  print("");

  usuario["nome"] = "Roberto"; // Alterando nome para Roberto.
  print("");
  print("Dados atualizados: $usuario");
}
