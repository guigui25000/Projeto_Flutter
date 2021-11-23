

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_facul/texto/textos_do_projeto.dart';

import 'ajuda.dart';
import 'inicio.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Develop it Yourself'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'O que procura ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_task),
              title: Text('Inicio de tudo'),
              onTap : (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                },),);
              }
            ),
            ListTile(
              leading: Icon(Icons.add_task),
              title: Text('Primeiros passaos'),
                onTap : (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Inicio();
                  },),);
                }
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Precisando de ajuda ?'),
                onTap : (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Ajuda();
                  },),);
                }
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,10.0,0,0),
        child: ListView(children: <Widget>[
          ListTile(leading: Icon(Icons.settings), title: Text('$texto_home')),
          ListTile(leading: Icon(Icons.link), title: Text('$links_home')),
          ListTile(leading: Icon(Icons.task), title: Text('$iniciando_home'))
        ]),
      ),
    );
  }
}