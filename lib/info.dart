import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0D1125),
        elevation: 0,
        title: Text(
          "  CALCULAR IMC",
          style: TextStyle(
              color: const Color(0xFFF5FAFD),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: const Color(0xFFF5FAFD),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF0D1125),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
            decoration: BoxDecoration(
                color: const Color(0xFFF5FAFD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "O que é IMC ?",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "   IMC é a sigla para 'Índice de Massa Corpórea', esta medida foi adotada pela Organização Mundial de Saúde para calcular o peso ideal de cada pessoa baseando-se em sua altura e peso.",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "   Para realizar o cálculo é necessário dividir o peso do paciente pela sua altura elevada ao quadrado. O indivíduo que tem um peso considerado normal apresenta o resultado do IMC entre 18,5 e 24,9.",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide.none,
                    ),
                    onPressed: () {},
                    color: const Color(0xFF0D1125),
                    height: 40,
                    minWidth: 200,
                    child: Text(
                      "Tabela",
                      style: TextStyle(
                        color: const Color(0xFFF5FAFD),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " CLASSIFICAÇÃO ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " IMC ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " MAGREZA ",
                          style: TextStyle(
                              color: const Color(0xFF1763FC),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " abaixo de 18.5 ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " NORMAL ",
                          style: TextStyle(
                              color: const Color(0xFFBAC811),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " entre 18.5 e 24.9",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " SOBREPESO ",
                          style: TextStyle(
                              color: const Color(0xFFFF9154),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " entre 25 e 29.9 ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " OBESIDADE ",
                          style: TextStyle(
                              color: const Color(0xFFFC1763),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " entre 29.9 e 39.9 ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          " OBESIDADE GRAVE ",
                          style: TextStyle(
                              color: const Color(0xFF7C000B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          " acima de 40 ",
                          style: TextStyle(
                              color: const Color(0xFF0D1125),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
