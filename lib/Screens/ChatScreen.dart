import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_00002/ObjectHelper/Message.dart';
import 'package:flutter_app_test_00002/ObjectHelper/Person.dart';

class ChatScreen extends StatefulWidget {
  Person person;
  ChatScreen({this.person});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller = TextEditingController();
  String accountMessage;
  var i = 0;
  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (mes) {
                accountMessage = mes;
              },
              decoration: InputDecoration(
                hintText: "Send a message...",
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                if (accountMessage != null) {
                  messages.add(Message(
                    isLiked: false,
                    unRead: false,
                    time: "now",
                    sender: currentUser,
                    text: accountMessage,
                  ));
                }
              });
              print("${messages.length}");
              print(accountMessage);
            },
          )
        ],
      ),
    );
  }

  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${message.time}"),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "${message.text}",
          )
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                iconSize: 30.0,
                onPressed: () {
                  if (message.isLiked) {
                    setState(() {
                      message.isLiked = false;
                    });
                  } else {
                    setState(() {
                      message.isLiked = true;
                    });
                  }
                },
              )
            : SizedBox.shrink(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "${widget.person.name}",
          style: TextStyle(
              color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {},
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: ListView.builder(
                  reverse: false,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              )),
        ),
        _buildMessageComposer(),
      ]),
    );
  }
}
