import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      // margin: const EdgeInsets.only(right: 5),
      child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(110, 222, 222, 222))),
          child: Text(
            title,
            style: const TextStyle(color: Colors.black87),
          )),
    );
  }
}
