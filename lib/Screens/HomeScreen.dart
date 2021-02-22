import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_00002/Widgets/CategoriesSelector.dart';
import 'package:flutter_app_test_00002/Widgets/Favorite_Contacts.dart';
import 'package:flutter_app_test_00002/Widgets/RecentChats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var screen = [Message(), Online(), Group(), Request()];
  int _index = 0;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: !isCheck
            ? Text(
                "Chats",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            : Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search ..",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      )),
                ),
              ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: Icon(
            Icons.chat,
            size: 40,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          !isCheck
              ? IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      isCheck = true;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      isCheck = false;
                    });
                  },
                ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  )),
              child: (() {
                if (_index == 0) {
                  return Visibility(
                    visible: true,
                    child: Column(
                      children: [
                        FavoriteContacts(),
                        RecentChats(),
                      ],
                    ),
                  );
                } else {
                  return Visibility(
                    visible: false,
                    child: Column(
                      children: [
                        FavoriteContacts(),
                        RecentChats(),
                      ],
                    ),
                  );
                }
              }()),
            ),
          ),
        ],
      ),
    );
  }
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                )),
            child: Column(
              children: [
                FavoriteContacts(),
                RecentChats(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Online extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
