import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/feed_design.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData.fallback(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_outlined,
                  size: 30,
                )),
          ],
          title: Text(
            "Instagram",
            style: TextStyle(color: Colors.black),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                  ),
                ]),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: _buildfeeds()),
          ],
        ));
  }

  Widget _buildfeeds() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (count, index) {
          return FeedContainer(
            user: 'user $index',
          );
        });
  }
}
