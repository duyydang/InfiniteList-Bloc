import 'package:flutter/material.dart';

class InfiniteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('1'),
              title: Text('Hello, How are you ?',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('This is the first message-for testing'),
              isThreeLine: true,
            );
        },)
      ),
    );
  }
}
