import 'package:flutter/material.dart';
import 'tarefa.dart';

void main() {
  runApp(new TarefasApp());
}

class TarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Tarefa App', home: new ListaScreen());
  }
}

class ListaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListaScreenState();
  }
}

class ListaScreenState extends State<ListaScreen> {
  List<Tarefa> tarefas = new List<Tarefa>();
  TextEditingController controller = new TextEditingController();

  void adicionaTarefa(String nome) {
    setState(() {
      tarefas.add(Tarefa(nome));
    });

    controller.clear(); // Limpa o campo da TextField.
  }

  Widget getItem(Tarefa tarefa) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: <
        Widget>[
      IconButton(
          icon: Icon(
            tarefa.concluida ? Icons.check_box : Icons.check_box_outline_blank,
            size: 40.0,
            color: Colors.lightGreen,
          ),
          padding: EdgeInsets.only(left: 10.0, right: 30.0),
          onPressed: () {
            setState(() {
              tarefa.concluida = true;
            });
          }),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            tarefa.nome,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(
              tarefa.data.toIso8601String()) // Conversão de inteiro para String
        ],
      )
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: new Text("Tarefas:")),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(// Exibe um campo de emtrada de texto.
                    controller: controller,
                    onSubmitted:
                        adicionaTarefa // essa função permite após digitar uma informação clicar no botão enviar.
                    )
                  ),
            Expanded(
                // Faz a expansão da listView
                child: ListView.builder(
                    itemCount: tarefas.length,
                    itemBuilder: (_,indice) {
                      return getItem(tarefas[indice]);
                    },
                  )
                )
          ],
        ),
      );
  }
}