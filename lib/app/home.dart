import 'package:atm_local_protifile/app/index.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Loja()));
  }

 void _abrirService() {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Servicos()));
 }
  void _abrirCliente() {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Clientes()));
 }
  void _abrirMais() {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Mais()));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("assets/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirService,
                    child: Image.asset("assets/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("assets/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirMais,
                    child: Image.asset("assets/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
