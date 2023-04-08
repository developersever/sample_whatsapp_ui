import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/chattitle.dart';
import 'package:whatsapp_ui/components/storybtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);

  List<String> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/83.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text('WhatsappUI'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StoryButton(imageUrl[0], "Sever Ellie"),
                  StoryButton(imageUrl[1], "Jack Smith"),
                  StoryButton(imageUrl[2], "Eke Johnson"),
                  StoryButton(imageUrl[3], "Amah Reuben"),
                  StoryButton(imageUrl[4], "Chika Danny"),
                  StoryButton(imageUrl[5], "Ubie Isaiah"),
                  StoryButton(imageUrl[6], "Wesly Akani"),
                  StoryButton(imageUrl[7], "Ubie Isaiah"),
                  StoryButton(imageUrl[8], "Wesly Akani"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: containerRadius, topRight: containerRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: ListView(
                    children: [
                      chatTile(imageUrl[0], "Sever Ellie", "msg", "1am", false),
                      chatTile(imageUrl[1], "Jack Smith", "msg", "2pm", true),
                      chatTile(imageUrl[2], "Eke Johnson", "msg", "2 Days ago",
                          false),
                      chatTile(imageUrl[3], "Amah Reuben", "msg", "Now", true),
                      chatTile(
                          imageUrl[4], "Chika Danny", "msg", "5 Hours", true),
                      chatTile(imageUrl[5], "Ubie Isaiah", "msg", "1 Min Aago",
                          false),
                      chatTile(imageUrl[6], "Kyrie Elieson", "msg",
                          "19 Min Aago", true),
                      chatTile(imageUrl[7], "Ubie Isaiah", "msg",
                          "1 Month Aago", true),
                      chatTile(imageUrl[8], "Wesly Snipes", "msg", "1am", true),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
