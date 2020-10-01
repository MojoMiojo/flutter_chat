import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:flutter_chat/chat_screen.dart';

Future<void> main() async {
  runApp(MyApp());
  /*QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
  snapshot.documents.forEach((i) {
    print (i.data);
  });*/

  /* Escrita
  Firestore.instance.collection("mensagens").document("msg1").setData({
    "texto": "Olá",
    "from" : "Daniel",
    "read" : false});*/

  //Tempo real
  /*Firestore.instance.collection("mensagens").snapshots().listen((dado) {
    dado.documents.forEach((element) {
      print (element.data);
    });
  });*/

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Chat Flutter",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
          iconTheme: IconThemeData(
            color: Colors.lightBlueAccent,
          )
        ),

        home: ChatScreen()
    );
  }
}
