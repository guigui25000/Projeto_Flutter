import 'package:flutter/material.dart';
import 'package:projeto_facul/screens/home.dart';

import 'models/transferencia.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MetaApp',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController controladorNumero = TextEditingController();
  final TextEditingController controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemFormulario(
              controladorNumero,
              TextInputType.text,
              rotulo: "Login",
              dica: "****@email.com",
            ),
            ItemFormulario(
              controladorValor,
              TextInputType.visiblePassword,
              rotulo: "Senha",
              dica: "*****",
            ),
            ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  BotaoSalvar(controladorNumero.text,
                      controladorValor.text, context);
                })
          ],
        ),
      ),
    );
  }
}

class ItemFormulario extends StatelessWidget {
  final TextEditingController controlador;
  final String? rotulo;
  final String? dica;
  final TextInputType textInputType;

  ItemFormulario(this.controlador, this.textInputType,
      {this.rotulo, this.dica});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            labelText: rotulo,
            hintText: dica),
        keyboardType: textInputType,
      ),
    );
  }
}

void BotaoSalvar(String? login, String? senha, BuildContext context) {
  if (login != null && senha != null) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Home();
    },),);
  }
}