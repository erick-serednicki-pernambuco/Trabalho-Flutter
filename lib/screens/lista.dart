import 'package:flutter/material.dart';

class Lista extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('@Comando'), actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
              onPressed: () { Navigator.pushNamed(context, '/login');},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text("Comando ${index+1}"),
            trailing: Text("99999-9999"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/cadastro');
        },
      ),
    );
  }
}