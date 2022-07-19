
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/utils.dart';
import '../model/category.dart';

class joblist extends StatelessWidget {
  List<Category> categories= Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(),
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(left: 82.0),
        child: Text("RozzKaam", style: TextStyle(fontSize: 20),),
      ),),
      body:
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Padding(
                padding: const EdgeInsets.only(top: 10,),
                child: Text("RECENTLY ADDED", style: TextStyle( fontSize: 35, fontFamily: 'SigmarOne'), textAlign: TextAlign.center,),
              ),
              Expanded(child: ListView.builder(itemCount: categories.length,itemBuilder: (BuildContext ctx, int index){
                return Container(
                  margin: EdgeInsets.all(20),
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(child: ClipRRect(
                          borderRadius: BorderRadius.circular(20)
                          ,child: Image.asset('images/'+categories[index].imgName+'.jpg', fit: BoxFit.cover,)
                      ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20), topLeft: Radius.circular(20), topRight: Radius.circular(20)),gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors:[
                            Colors.black.withOpacity(0.8), Colors.black.withOpacity(0.2)
                          ])),

                        ),
                      ),
                      Column( crossAxisAlignment: CrossAxisAlignment.stretch

                        ,children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(categories[index].name, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold, fontFamily: 'Pacifico')),
                        ),
                          Text('\u{20B9}${categories[index].p}',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'SigmarOne'),),
                      ],)
                    ],
                  ),
                );
              })
              ),
            ],
          )

        )

    );
  }
}