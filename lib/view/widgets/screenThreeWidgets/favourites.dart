import 'package:flutter/material.dart';

class FavouriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
        decoration: const BoxDecoration(color: Colors.grey),
        child: ListTile(
            leading: Container(
                width: width * 0.12,
                height: height * 0.04,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(Icons.book, color: Colors.white)),
            title: const Text('Share Prototype With Team',
                style: TextStyle(color: Colors.white)),
            trailing: const Icon(Icons.forward, color: Colors.white)),
      )
    ]);
  }
}
