import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_00002/ObjectHelper/Message.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              //vertical: 10.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contacs",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    onPressed: () {}),
              ],
            ),
          ),
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
            child: ListView.builder(
              reverse: false,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.0),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage(
                        chats[index].sender.imageUrl,
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "${favorites[index].name} ${favorites[index].sureName}",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
