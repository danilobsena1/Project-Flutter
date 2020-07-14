void main() {
  var status = "andamento";

  switch (status) {
    case "aberto":
      print("O seu pedido está aberto!");
      break;
    case "fechado":
      print("O seu pedido está fechado!");
      break;
    case "pendente":
      print("O seu pedido está pendente!");
      break;

    default:
      print("Status não disponível");
  }
}
