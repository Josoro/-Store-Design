import 'package:flutter/material.dart';

class CategoryArticles extends StatefulWidget {
  const CategoryArticles({super.key});

  @override
  State<CategoryArticles> createState() => _CategoryArticlesState();
}

class _CategoryArticlesState extends State<CategoryArticles> {
  List categories = ['All', 'Winter', 'Men', 'Woman', 'Baby', 'Babey'];
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 42,
      //width: ,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                click = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: click == index
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black)
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: click == index ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
