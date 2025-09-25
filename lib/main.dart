import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainWid extends StatelessWidget{
  Widget build(BuildContext context){
    return new Column(
      children: [
        Center(child: Text('Выберите пиццу', style: TextStyle(color: Colors.red, fontSize: 32))),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: [
          TextButton(onPressed: (){}, child: Text('Пеперони'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
          TextButton(onPressed: (){}, child: Text('Маргарита'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
          TextButton(onPressed: (){}, child: Text('Гавайская'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
        ]),
        Center(child: Text('Размер пиццы', style: TextStyle(color: Colors.red, fontSize: 32))),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: [
          TextButton(onPressed: (){}, child: Text('28 см'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
          TextButton(onPressed: (){}, child: Text('32 см'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
          TextButton(onPressed: (){}, child: Text('40 см'), style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white)),
        ]),
        Padding(padding: EdgeInsets.all(20.0), child: TextButton(onPressed: (){}, child: Text('Заказать'), style: TextButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white, minimumSize: Size(400, 50))))
      ],
    );
  }
}

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(title: Text('Заказ пиццы')),
        body: new MainWid(),
      ),
    )
  );
}
