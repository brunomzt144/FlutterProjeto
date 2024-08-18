import 'package:flutter/material.dart';
import 'package:gym_app/pages/home/home_widgets/home_list_item.dart';
import 'package:gym_app/pages/home/home_widgets/home_list_model.dart';
import 'package:gym_app/shared/constants/custom_colors.dart';

class HomePageContent extends StatefulWidget {
  final List<HomeListModel> listModels;
  HomePageContent({this.listModels});

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            CustomColors().getGradientMainColor(),
            CustomColors().getGradientSecondaryColor(),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: ListView.builder(
        itemCount: widget.listModels.length,
        itemBuilder: (context, index) {
          return HomeListItem(
            homeListModel: widget.listModels[index],
            onDelete: (index) => removeItem(index),
            index: index
          );
        },
      ),
    );
  }
 void removeItem(int index) {
  if (widget.listModels.isNotEmpty && index >= 0 && index < widget.listModels.length) {
    setState(() {
      widget.listModels.removeAt(index);
    });
  } else {
    print('Error: Lista vazia');
  }
}
}
