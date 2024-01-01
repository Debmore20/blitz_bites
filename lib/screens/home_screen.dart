import 'package:blitz_bites/components/custom_tag.dart';
import 'package:blitz_bites/components/home_screen/world.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        backgroundColor: const Color.fromARGB(255, 0, 9, 9),
        elevation: 0,
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Blitz Bites',
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.white70,
            ),
          );
        }),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            right: 30, left: 30, top: 10, bottom: 10),
                        fillColor: Colors.white54),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white70),
                    )),
                const SizedBox(
                  height: 18,
                ),
              ],
            )),
      ),
      drawer: Container(
        color: Colors.black87,
        width: 300,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                CustomTag(title: 'World'),
                CustomTag(title: 'Politics'),
                CustomTag(title: 'Finance'),
                CustomTag(title: 'Technology'),
                CustomTag(title: 'Sports'),
                CustomTag(title: 'Entertainment'),
              ],
            ),
          ),
          const WorldNewsHome()
        ],
      ),
    );
  }
}
