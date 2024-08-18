import 'package:flutter/material.dart';

import 'home_list_model.dart';

class HomeModalAdd extends StatefulWidget {
  final List<HomeListModel> listModels;
  final Function fncRefresh;

  HomeModalAdd({this.listModels, this.fncRefresh});
  @override
  _HomeModalAddState createState() => _HomeModalAddState();
}

class _HomeModalAddState extends State<HomeModalAdd> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _quantidadecontroller = TextEditingController();
  TextEditingController _diasemanaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Novo exercicio",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Digite o nome do exercicio:",
                ),
              ),
              TextFormField(
                controller: _quantidadecontroller,
                decoration: InputDecoration(
                  labelText: "Digite a quantidade de repetições:",
                ),
              ),
              TextFormField(
                controller: _diasemanaController,
                decoration: InputDecoration(
                  labelText: "Digite o dia que será feito:",
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 25)),
              ElevatedButton(
                onPressed: () {
                  addInList();
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                ),
                child: Text("Adicionar", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addInList() {
    HomeListModel hml = HomeListModel(
      title: _nameController.text,
      qtde: _quantidadecontroller.text,
      diasemana: _diasemanaController.text,
    );
    setState(() {
      widget.listModels.add(hml);
    });

    widget.fncRefresh();

    Navigator.pop(context);
  }
}
