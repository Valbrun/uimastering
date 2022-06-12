import 'package:flutter/material.dart';

class BannerList extends StatefulWidget {
  const BannerList({Key? key}) : super(key: key);

  @override
  State<BannerList> createState() => _BannerListState();
}

class _BannerListState extends State<BannerList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          // height: 200,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.purple,
            image: const DecorationImage(
              image: AssetImage('assets/ny.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child: Container(
            child: Stack(
              children: [
                Positioned(
                  bottom: 15,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'New York',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.white,
                              size: 10,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '6.6',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
      ],
    );
  }
}
