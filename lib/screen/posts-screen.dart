import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return PostsState();
    }

  }
  class PostsState extends State<PostsScreen>{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: Center(
          child: Text('Posts'),
        ),
        );
     
    }
  }


