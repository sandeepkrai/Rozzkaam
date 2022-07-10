import 'package:flutter/material.dart';
import 'upper_page.dart';
import 'middle.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/back.jpeg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage("images/hello.jpg"),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.headset_mic_outlined,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.notifications_active_outlined,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.account_balance_wallet_outlined,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.blue,
          centerTitle: false,
          title: Text("Sandeep"),
          // titleTextStyle: TextStyle(color: Colors.),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 20,
              height: 50,
            ),
            const upperPage(),
            SizedBox(
              width: 50,
              height: 10,
            ),
            middlepage(),
            SizedBox(
              width: 50,
              height: 10,
            ),
            Image.asset('images/worker.jpg'),
          ],
        ),
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {},
              child: const Icon(
                Icons.home_outlined,
                color: Colors.redAccent,
              ),
              // elevation: 5.0,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            child: Container(
              color: Colors.transparent,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    color: Colors.red,
                    padding: const EdgeInsets.only(left: 28.0),
                    icon: const Icon(Icons.chat),
                    onPressed: () {
                      // setState(() {
                      //   currentIndex = 0;
                      // });
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    color: Colors.red,
                    padding: const EdgeInsets.only(right: 28.0),
                    icon: const Icon(Icons.emoji_flags_outlined),
                    onPressed: () {
                      // setState(() {
                      //   currentIndex = 1;
                      //   print("${currentIndex}");
                      //
                      // });
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    color: Colors.red,
                    padding: const EdgeInsets.only(left: 28.0),
                    icon: const Icon(Icons.notifications_active_outlined),
                    onPressed: () {
                      // setState(() {
                      //   currentIndex = 2;
                      //   print("${currentIndex}");
                      //
                      // });
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    color: Colors.red,
                    padding: const EdgeInsets.only(right: 28.0),
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // setState(() {
                      //   currentIndex = 3;
                      //   print("${currentIndex}");
                      // });
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}
