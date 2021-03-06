import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:talenthunt/drawer_pages/camera_screen.dart';
import 'package:nice_button/nice_button.dart';


class Categories extends StatefulWidget {
  Categories({Key key, this.title}) : super(key: key);

  final String title;

  bool isDeleted = true;
  bool isSelected = false;

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _value0 = 1;
  int _value1 = 1;
  int _value2 = 1;
  int _value3 = 1;
  int _value4 = 1;
  int _value5 = 1;
  int _value6 = 1;
  int _value7 = 1;
  int _value8 = 1;
  int _value9 = 1;
  int _value10 = 1;
  int _value11 = 1;
  int _value12 = 1;
  //int _value13 = 1;

  var textStyle = TextStyle(fontSize: 25);
  var textStyle1 = TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
        backgroundColor: Colors.cyan[300],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customFilterChipWidget(
                    "Comedy", 0, _value0, Colors.grey),
                customFilterChipWidget(
                    "Flute", 1, _value1, Colors.yellowAccent),
                customFilterChipWidget(
                    "Drawing/Artist", 2, _value2, Colors.orangeAccent),
                customFilterChipWidget(
                    "Handwriting", 3, _value3, Colors.purpleAccent),
                customFilterChipWidget("Piano", 4, _value4, Colors.cyanAccent),
                customFilterChipWidget(
                    "Dance", 5, _value5, Colors.lightGreenAccent),
                customFilterChipWidget(
                    "Others..", 12, _value12, Colors.deepOrange),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customFilterChipWidget(
                    "Singing", 6, _value6, Colors.greenAccent),
                customFilterChipWidget(
                    "Photography", 7, _value7, Colors.pinkAccent),
                customFilterChipWidget(
                    "Cube Solving", 8, _value8, Colors.lightGreen),
                customFilterChipWidget(
                    "Band", 9, _value9, Colors.deepPurpleAccent),
                customFilterChipWidget(
                    "Acting", 10, _value10, Colors.redAccent),
                customFilterChipWidget("Crafting", 11, _value11, Colors.grey),
                NiceButton(
                    width: 105,
                    elevation: 3.0,
                    radius: 42.0,
                    text: "NEXT",
                    background: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Talents()));    //ImagePick
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onSelected(bool isSelected, int index) {
    switch (index) {
      case 0:
        _value0 = isSelected ? 0 : null;
        break;
      case 1:
        _value1 = isSelected ? 0 : null;
        break;
      case 2:
        _value2 = isSelected ? 0 : null;
        break;
      case 3:
        _value3 = isSelected ? 0 : null;
        break;
      case 4:
        _value4 = isSelected ? 0 : null;
        break;
      case 5:
        _value5 = isSelected ? 0 : null;
        break;
      case 6:
        _value6 = isSelected ? 0 : null;
        break;
      case 7:
        _value7 = isSelected ? 0 : null;
        break;
      case 8:
        _value8 = isSelected ? 0 : null;
        break;
      case 9:
        _value9 = isSelected ? 0 : null;
        break;
      case 10:
        _value10 = isSelected ? 0 : null;
        break;
      case 11:
        _value11 = isSelected ? 0 : null;
        break;
      case 12:
        _value12 = isSelected ? 0 : null;
        break;
    }
    setState(() {});
  }

  Widget customFilterChipWidget(
      String title, int index, int value, Color selectedColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FilterChip(
        pressElevation: 0.0,
        selectedColor: selectedColor,
        backgroundColor: Colors.grey[100],  
        label: Text(
          title,
          style: TextStyle(color: Colors.blueAccent , fontSize: 30),

        ),
        selected: value == 0,
        onSelected: (bool selected) {
          onSelected(selected, index);
        },
      ),
    );
  }
}