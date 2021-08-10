import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smart_manager/app/data/model/to_do_model.dart';
import 'package:smart_manager/app/modules/home/widgets/to_do_tile.dart';

class ToDoListView extends StatelessWidget {
  const ToDoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 20,
      itemBuilder: (context, i, j) => ToDoTile(
        model: ToDoModel(
          catagery: "Internal",
          title: "Create New $i Page",
          date: " till 10 May 2021",
          description: "hi",
        ),
      ),
      options: CarouselOptions(
        viewportFraction: 0.33,
        aspectRatio: 1,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlay: true,
        // autoPlayInterval: Duration(seconds: 10),
        autoPlayAnimationDuration: Duration(seconds: 5),
      ),
    );
    // return ListView.builder(
    //   physics: BouncingScrollPhysics(),
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 40,
    //   itemBuilder: (context, i) => ToDoTile(
    //     model: ToDoModel(
    //       catagery: "Internal",
    //       title: "Create New Page",
    //       date: " till 10 May 2021",
    //       description: "hi",
    //     ),
    //   ),
    // );
  }
}