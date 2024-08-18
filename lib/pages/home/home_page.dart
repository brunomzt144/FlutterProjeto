import 'package:flutter/material.dart';
import 'package:gym_app/pages/home/home_widgets/home_appbar.dart';
import 'package:gym_app/pages/home/home_widgets/home_content.dart';
import 'package:gym_app/pages/home/home_widgets/home_drawer.dart';
import 'package:gym_app/pages/home/home_widgets/home_fab.dart';

import 'home_widgets/home_list_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  List<HomeListModel> listModels = [
    HomeListModel(
      title: "Exercicio",
      qtde: "1",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(),
      floatingActionButton: getHomeFab(context, listModels, refreshPage),
      body: HomePageContent(
        listModels: listModels,
      ),
    );
  }

  refreshPage() {
    setState(() {});
  }
}