import 'package:flutter/material.dart';

class FeedContainer extends StatefulWidget {
  final String user;
  const FeedContainer({Key? key, required this.user}) : super(key: key);

  @override
  State<FeedContainer> createState() => _FeedContainerState();
}

class _FeedContainerState extends State<FeedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.user,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.66,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.messenger_outline)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '다른 유저',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('님 외 여러명이 좋아합니다.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
