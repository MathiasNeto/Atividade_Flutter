import 'package:flutter/material.dart';
import 'package:pdv_flutter/pages/home.page.dart';

class cadastroPage extends StatefulWidget {
  const cadastroPage({Key? key}) : super(key: key);

  @override
  State<cadastroPage> createState() => _cadastroPageState();
}

class _cadastroPageState extends State<cadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Text("voltar",style: TextStyle(color: Colors.red),),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("BEM VINDO",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold, 
              color: Colors.red,
              fontSize: 30)),

            Text("CADASTRO",
            overflow: TextOverflow.clip,
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

            Container(
              padding: EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Column(
                children: [
                   TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                      labelText: "Nome Completo",
                      labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    )
                  ),
                style: TextStyle(fontSize: 15),
                ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    )
                  ),
                  style: TextStyle(fontSize: 15),
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    )
                  ),
                  style: TextStyle(fontSize: 15),
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: "Confirma Senha",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    )
                  ),
                  style: TextStyle(fontSize: 15),
                ),
                ],
              ),
            ),
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(300, 50))),
                child: Text("ENTRAR"),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage()));
                },
            )
        )
        ],
        )
      )
    );
  }
}