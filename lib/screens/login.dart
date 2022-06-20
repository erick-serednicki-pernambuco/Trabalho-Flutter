import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(Icons.assignment_turned_in_outlined, size: 72, color: Colors.greenAccent,),
           Text('Comandos', style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
          ),
           TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Email"),
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              label: Text("Senha"),
            ),
          ),
          TextButton(
            child: Text('ENTRAR'),
            onPressed: () {
              Navigator.pushNamed(context, '/lista');
            },
          )
        ],
      ),
    );
  }
}