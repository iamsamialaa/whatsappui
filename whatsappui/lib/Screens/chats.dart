import 'package:flutter/material.dart';

import '../Utils/chat.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Chat(
            imgpath: 'assets/images/OIP.jpeg',
            name: 'Sami',
          ),
          Chat(
            name: 'ahmed',
            imgpath: 'assets/images/person.jpg',
          ),
          Chat(
            name: 'khaled',
            imgpath: 'assets/images/pexels-pixabay-220453.jpg',
          ),
          Chat(
            imgpath: 'assets/images/OIP.jpeg',
            name: 'Sami',
          ),
          Chat(
            name: 'ahmed',
            imgpath: 'assets/images/person.jpg',
          ),
          Chat(
            name: 'khaled',
            imgpath: 'assets/images/pexels-pixabay-220453.jpg',
          ),
          Chat(
            imgpath: 'assets/images/OIP.jpeg',
            name: 'Sami',
          ),
          Chat(
            name: 'ahmed',
            imgpath: 'assets/images/person.jpg',
          ),
          Chat(
            name: 'khaled',
            imgpath: 'assets/images/pexels-pixabay-220453.jpg',
          ),
          Chat(
            imgpath: 'assets/images/OIP.jpeg',
            name: 'Sami',
          ),
          Chat(
            name: 'ahmed',
            imgpath: 'assets/images/person.jpg',
          ),
          Chat(
            name: 'khaled',
            imgpath: 'assets/images/pexels-pixabay-220453.jpg',
          ),
          Chat(
            imgpath: 'assets/images/OIP.jpeg',
            name: 'Sami',
          ),
          Chat(
            name: 'ahmed',
            imgpath: 'assets/images/person.jpg',
          ),
          Chat(
            name: 'khaled',
            imgpath: 'assets/images/pexels-pixabay-220453.jpg',
          ),
        ],
      ),
    );
  }
}
