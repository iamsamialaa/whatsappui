import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String imgpath;
  final String name;

  const Chat({
    super.key,
    required this.imgpath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(imgpath),
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      subtitle: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('~Hi, How R U?'),
        ],
      ),
      trailing: Text(
        '6:30 AM',
        style: TextStyle(
            color: Colors.cyan.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}
