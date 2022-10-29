import 'dart:ui';

import 'package:chatty/pages/widget/chat_tile.dart';
import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add,
        size: 28,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //untuk membuat widget buttom bawah
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( //singlechild untuk bisa di scroll
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/fonts/image/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Influencer',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  //height: 100,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, //utk membuat text di kiri pke cross, klo main atas bawah
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      //SizedBox(height: 16,),
          
                      ChatTile(
                        imageUrl: 'assets/fonts/image/image 5.png',
                        name: 'Joshuer',
                        text: "Sorry, You're not my ty....",
                        time: 'Now',
                        unread: true,
                      ),
          
                      ChatTile(
                        imageUrl: 'assets/fonts/image/image 9.png',
                        name: 'Gabriella',
                        text: "I saw it celarly and mig....",
                        time: '2:20',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Groups',
                            style: titleTextStyle,
                          )
                        ],
                      ),
                      ChatTile(
                          imageUrl: 'assets/fonts/image/image 4.png',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca....',
                          time: '11:11',
                          unread: false),
                      ChatTile(
                          imageUrl: 'assets/fonts/image/image 6.png',
                          name: 'Wildan',
                          text: 'Here here we can go...',
                          time: '7:11',
                          unread: true),
                      ChatTile(
                          imageUrl: 'assets/fonts/image/image 10.png',
                          name: 'Bantley',
                          text: "The car which doesn't...",
                          time: '7:11',
                          unread: true),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(color: whiteColor,),
                      ),
          
                      /* Row(children:[ Image.asset('assets/fonts/image/image 5.png', width: 55, height: 55,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Joshuer', style: titleTextStyle,
                      ),
                      Text("Sorry, you're not my ty,,,,", style: subTitleTextStyle.copyWith(color: blackColor)),
                      ],
                      ),
                      Spacer(),
                      Text('Now', style: subTitleTextStyle, ), //untuk membuat widget langsung di pojok kanan
                      ]
                      )*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      /*  Text(
        'Home Page',
        style: TextStyle(fontSize: 40),
      ),*/
    );
  }
}
