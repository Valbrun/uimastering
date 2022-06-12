// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import 'subWidget/main_list_view_h.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI Mastering',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   backgroundColor: Colors.white.withOpacity(0),
      //   elevation: 0,
      //   title: Text(
      //     'Mon App',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SafeArea(child: HomePageContain()),
    );
  }
}

class HomePageContain extends StatefulWidget {
  const HomePageContain({Key? key}) : super(key: key);

  @override
  State<HomePageContain> createState() => _HomePageContainState();
}

class _HomePageContainState extends State<HomePageContain> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My destinations',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.blue[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 220,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BannerList(),
                BannerList(),
                BannerList(),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transportations',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // Container(
                //   height: 40,
                //   color: Colors.pink,
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              height: 110,
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  color: Color.fromARGB(56, 227, 216, 216),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(111, 97, 179, 245),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(50),
                                    ),
                                    child: Icon(
                                      Icons.airplanemode_on_rounded,
                                      color: Color.fromARGB(255, 0, 140, 254),
                                      size: 40,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        // mainAxisAlignment:
                                        // MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            '28 Oct 2019 ---- 11:00 AM',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 10),
                                          ),
                                          Icon(
                                            Icons.more_vert_rounded,
                                            color: Colors.grey,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text('Hawaii'),
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            color: Colors.blue,
                                          ),
                                          Text('Sevilla'),
                                        ],
                                      ),
                                      Text(
                                        'Emirate AirWays',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
