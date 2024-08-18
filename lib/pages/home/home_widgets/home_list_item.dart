import 'package:flutter/material.dart';
import 'package:gym_app/pages/home/home_widgets/home_list_model.dart';
import 'package:gym_app/shared/constants/custom_colors.dart';

class HomeListItem extends StatefulWidget {
  final HomeListModel homeListModel;
  final Function(int) onDelete;
  final int index;

  HomeListItem({ this.homeListModel,  this.onDelete,  this.index});

  @override
  _HomeListItemState createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.homeListModel.title,
                        style: TextStyle(
                          color: CustomColors().getAppBarMainColor(),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.onDelete(widget.index); // Call the callback
                        },
                        child: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                  Text(
                    widget.homeListModel.qtde,
                    style: TextStyle(
                      color: CustomColors().getAppBarMainColor(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}