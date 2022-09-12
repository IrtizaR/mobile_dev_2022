import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class cardsdetail extends StatefulWidget {
  const cardsdetail({Key? key, required User user}) : super(key: key);
  @override
  State<cardsdetail> createState() => _cardsdetailState();
}

class _cardsdetailState extends State<cardsdetail> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                title: Text(widget.user.name),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(user.email),
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye_sharp),
                        Text(user.views),
                      ],
                    ),

                  ],

                ),
                leading:  CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text(user.name.substring(0,1),
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
