import 'Person.dart';

class Message {
  final Person sender;
  final String time;
  String text;
  bool isLiked;
  bool unRead;

  Message({this.sender, this.time, this.text, this.isLiked, this.unRead});
}

Person currentUser = Person(
    id: 0,
    name: "Taylan",
    sureName: "YILDIZ",
    imageUrl: 'assets/images/greg.jpg');

final Person Ozge = Person(
  id: 1,
  name: "Özge",
  sureName: "DEMİR",
  imageUrl: 'assets/images/james.jpg',
);
final Person Yagmur = Person(
    id: 2,
    name: "Yağmur Su",
    sureName: "ÖZ",
    imageUrl: 'assets/images/greg.jpg');
final Person Baris = Person(
  id: 3,
  name: "Barış",
  sureName: "KURTBASAN",
  imageUrl: 'assets/images/john.jpg',
);

final Person Elif = Person(
  id: 4,
  name: "Elif",
  sureName: "SAĞLIK",
  imageUrl: 'assets/images/olivia.jpg',
);

final Person Emir = Person(
  id: 5,
  name: "Emir",
  sureName: "AKTÜRK",
  imageUrl: 'assets/images/sophia.jpg',
);

List<Person> favorites = [Ozge, Yagmur, Baris, Elif, Emir];

List<Message> chats = [
  Message(
    sender: Ozge,
    time: "5:32",
    text: "Merhaba, acaba yardımcı olabilir misiniz",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: Yagmur,
    time: "5:03",
    text:
        "Merhaba, artık Matematik Sorularını çözebiliyorum, Sen neler yapıyosun nerelerdesin bakam",
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: Baris,
    time: "19:32",
    text: "Amcam napıyon",
    isLiked: true,
    unRead: true,
  ),
  Message(
    sender: Elif,
    time: "20:07",
    text: "Hocam, Nasılsınız",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: Emir,
    time: "5:32",
    text: "Ciğerim nerdesin gelip Alam mı seni",
    isLiked: false,
    unRead: false,
  )
];

List<Message> messages = [
  Message(
    sender: Ozge,
    time: "5:32",
    text: "Merhaba, acaba yardımcı olabilir misiniz",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: currentUser,
    time: "7:32",
    text: "Merhaba, elbette nasıl yardımcı olabilirim",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: Yagmur,
    time: "5:03",
    text:
        "Merhaba, artık Matematik Sorularını çözebiliyorum, Sen neler yapıyosun nerelerdesin bakam",
    isLiked: true,
    unRead: false,
  ),
  Message(
    sender: Baris,
    time: "19:32",
    text: "Amcam napıyon",
    isLiked: true,
    unRead: true,
  ),
  Message(
    sender: currentUser,
    time: "20:12",
    text: "Merhaba, ne olsun sen neler yapıyorsun",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: Elif,
    time: "20:07",
    text: "Hocam, Nasılsınız",
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: Emir,
    time: "5:32",
    text: "Ciğerim nerdesin gelip Alam mı seni",
    isLiked: false,
    unRead: false,
  )
];
