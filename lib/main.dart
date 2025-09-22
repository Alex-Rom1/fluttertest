import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainWid extends StatelessWidget{
  Widget build(BuildContext context){
    return new Center(
      child: new Column(
        children: [
          new Text('в МШП'),
          new TextButton(
              onPressed: () async {
                Uri url = Uri.parse('https://informatics.ru');
                if (await (canLaunchUrl(url))){
                  await launchUrl(url);
                } else {
                  throw 'could not launch $url';
                }
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: new Text('посетить сайт', style: TextStyle(color: Colors.white))
          )
        ],
      ),
    );
  }
}

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Приглашение')),
        body: new MainWid()
      ),
    )
  );
}
