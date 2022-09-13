import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  final estiloTexto = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFE3350D),
        title: Text("Gastly #092"),
        leading: Image.asset("assets/images/logo.png",
        ),
      ),
      body:Container(
        margin: EdgeInsets.symmetric(
          vertical: 80,
          horizontal: 16,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset("assets/images/Charizard.png"),
            Text("Nascido de gases, qualquer um desmaiaria se engolido por seu corpo gasoso, que contém veneno."),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF00ffff),
                borderRadius: BorderRadius.circular(5)
              ),

              //colunas de descrição 1
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      //1º coluna
                      Text("Altura",
                      style: estiloTexto,),
                      Text("1,3 m"), 
                      SizedBox(
                        height: 40,
                      ),
                      Text("Tipo",
                      style: estiloTexto),
                      Chip(label: Text("Fantasma"),
                      backgroundColor: Color(0xFF8a2be2),
                      labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
                    ],
                    //coluna 2
                  ),
                  Column(
                    children: [
                      Text("Peso",
                      style: estiloTexto,),
                      Text("0,1 kg"),
                       SizedBox(
                        height: 50,
                      ),

                      Text("Habilidade",
                      style: estiloTexto,),
                      Text("Levitar")
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
            child: Text("Fraqueza",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text("Fantasma"),
                backgroundColor: Color(0xFF8a2be2),
                labelStyle: TextStyle(color: Colors.white),),
                Chip(label: Text("Noturno"),
                backgroundColor: Color(0xFF332A28),
                labelStyle: TextStyle(color: Colors.white),),
                Chip(label: Text("Metal"),
                backgroundColor: Color(0xFFE2E2E2),
                labelStyle: TextStyle(color: Colors.white),),
              ],
            )
          ],
        ),
      ) ,
    );
  }

}