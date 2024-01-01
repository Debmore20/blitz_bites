import 'package:flutter/material.dart';

class ArticleSummary extends StatelessWidget {
  const ArticleSummary({
    super.key,
    required this.articleTitle,
    required this.articleBody,
  });

  final String articleTitle;
  final String articleBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.blue,
          ),
          Column(
            children: [
              Text(articleTitle),
              Text(articleBody),
            ],
          )
        ],
      ),
    );
  }
}
