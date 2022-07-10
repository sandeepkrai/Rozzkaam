import 'package:flutter/material.dart';

class middlepage extends StatelessWidget {
  const middlepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => ArmChairs(),
          // ));
        },
        child: Container(
          width: 500,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      size: 70,
                    ),
                    Text('Payment')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.browse_gallery,
                      size: 70,
                    ),
                    Text('Browse Work')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Icon(
                      Icons.menu_book_outlined,
                      size: 70,
                    ),
                    Text('New Schemes')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
