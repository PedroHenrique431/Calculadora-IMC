import 'package:flutter/material.dart';

import 'info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IMCcalculator(),
    );
  }
}

class IMCcalculator extends StatefulWidget {
  IMCcalculator({Key key}) : super(key: key);

  @override
  _IMCcalculatorState createState() => _IMCcalculatorState();
}

class _IMCcalculatorState extends State<IMCcalculator> {
  int currentindex = 0;
  String result = "";

  double height = 0;
  double weight = 0;

  String classificacao = "";
  String obesidade = "";

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.calculate,
          color: const Color(0xFF0D1125),
        ),
        title: Text(
          "  CALCULAR IMC",
          style: TextStyle(
              color: const Color(0xFF0D1125),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline_rounded, color: const Color(0xFF0D1125),),
            onPressed: (){
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPage()));
            }),
        ],

        backgroundColor: const Color(0xFFF5FAFD),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF5FAFD),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
            decoration: BoxDecoration(
                color: const Color(0xFF0D1125),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                ),
                Row(
                  children: [
                    radioButton("Homem", Colors.blue, 0),
                    radioButton("Mulher", Colors.pink, 1),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Altura (cm):",
                    style: TextStyle(
                        color: const Color(0xFFF5FAFD),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 20, 50.0, 20),
                  child: TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Digite sua altura (em cm)",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Peso (Kg):",
                    style: TextStyle(
                        color: const Color(0xFFF5FAFD),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 20, 50.0, 20),
                  child: TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Digite seu peso (em Kg)",
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide.none,
                    ),
                    onPressed: () {
                      setState(() {
                        height = double.parse(heightController.value.text);
                        weight = double.parse(weightController.value.text);
                      });

                      calculateBmi(height, weight);

                      createAlertDialog(context);
                    },
                    color: const Color(0xFFFCB017),
                    height: 80,
                    minWidth: 200,
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void calculateBmi(double height, double weight) {
    double finalresult = weight / (height * height / 10000);
    String bmi = finalresult.toStringAsFixed(2);

    setState(() {
      result = bmi;

      if (finalresult < 18.5) {
        classificacao = "MAGREZA";
        obesidade = "0";
      } else if (finalresult >= 18.5 && finalresult < 24.9) {
        classificacao = "NORMAL";
        obesidade = "0";
      } else if (finalresult >= 25 && finalresult < 29.9) {
        classificacao = "SOBREPESO";
        obesidade = "1";
      } else if (finalresult >= 30 && finalresult < 39.9) {
        classificacao = "OBESIDADE";
        obesidade = "2";
      } else if (finalresult > 40) {
        classificacao = "OBESIDADE GRAVE";
        obesidade = "3";
      } else{
        classificacao = "?";
        obesidade = "?";
      }
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            
            title: Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Seu IMC é: ",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$result",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
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
                  children: [
                    Text(
                      "Classificação: ",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$classificacao",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
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
                  children: [
                    Text(
                      "Obesidade: ",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$obesidade",
                      style: TextStyle(
                        color: const Color(0xFF0D1125),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

              ],
            )),
          );
        });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        height: 60,
        child: FlatButton(
          color: currentindex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
