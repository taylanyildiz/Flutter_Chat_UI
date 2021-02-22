import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectIndex = 0;
  final List<String> categories = ["Messages","Online","Groups","Request"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        reverse: false,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selectIndex = index;
                });
              },
              child: Text("${categories[index]}",
                style: TextStyle(
                  color: index == selectIndex ? Colors.white:Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),),
            ),
          );
        },
      ),
    );
  }
}
