import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
//import 'package:chatty/pages/widget/chat_tile.dart';

class slide2 extends StatelessWidget {
  //const slide2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      var imageurl,
      var text,
      var time,
    }) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageurl,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: subTitleTextStyle,
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: subTitleTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget senderBubble({
      var imageurl,
      var text,
      var time,
    }) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 124, 241, 126),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: subTitleTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageurl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        height: 115,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/fonts/image/image 6.png',
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: titleTextStyle,
                ),
                SizedBox(height: 2),
                Text(
                  '14,209 members',
                  style: subTitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/fonts/image/call.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageurl: 'assets/fonts/image/image 6.png',
                text: 'How Are You Guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageurl: 'assets/fonts/image/image 9.png',
                text: 'Come Here :P',
                time: '3:11',
              ),
              senderBubble(
                imageurl: 'assets/fonts/image/image 10.png',
                text:
                    'Thingking about how to deal\nwtih this client form hell....',
                time: '23:11',
              ),
              receiverBubble(
                imageurl: 'assets/fonts/image/image 5.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffDFDFDF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type Something',
              style: subTitleTextStyle,
            ),
            Image.asset(
              'assets/fonts/image/send.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
