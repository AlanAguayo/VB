import 'package:flutter/material.dart';
import 'package:pracitca2/settings/color_settings.dart';

class ConversorScreen extends StatefulWidget {
  ConversorScreen({Key? key}) : super(key: key);

  @override
  _ConversorScreenState createState() => _ConversorScreenState();
}

var _grados = ['Fahrenheit - Celsius', 'Celsius - Fahrenheit'];
String _vista = "Fahrenheit - Celsius";
double grados = 0;
double result = 0;
String mensaje = "";

class _ConversorScreenState extends State<ConversorScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtGrados = TextEditingController();

    return Scaffold(
      backgroundColor: ColorApp.secundaryBackColorApp,
      appBar: AppBar(
        backgroundColor: ColorApp.primarybackColorApp,
        title: Text("Conversor"),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: ListView(children: [
          ListTile(
            title: const Text(
              'Convertir',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: DropdownButton(
              items: _grados.map((String a) {
                return DropdownMenuItem(value: a, child: Text(a));
              }).toList(),
              onChanged: (_value) => {
                setState(() {
                  _vista = _value.toString();
                })
              },
              hint: Text(_vista),
            ),
          ),
          TextFormField(
            controller: txtGrados,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              hintText: 'Ingresa valor',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            color: Colors.black54,
            child: Positioned(
                bottom: 300,
                child: TextButton(
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_vista == 'Fahrenheit - Celsius') {
                          if (txtGrados.text.isEmpty ||
                              txtGrados.text == "." ||
                              txtGrados.text == "," ||
                              txtGrados.text == "-") {
                            mensaje = "Ingrese el valor a convertir";
                          } else {
                            grados =
                                (double.parse(txtGrados.text) - 32) * (5 / 9);
                            mensaje = txtGrados.text +
                                "°F = " +
                                grados.toString() +
                                "°C";
                          }
                        }

                        if (_vista == 'Celsius - Fahrenheit') {
                          if (txtGrados.text.isEmpty ||
                              txtGrados.text == "." ||
                              txtGrados.text == "," ||
                              txtGrados.text == "-") {
                            mensaje = "Ingrese el valor a convertir";
                          } else {
                            grados =
                                (double.parse(txtGrados.text) * (9 / 5)) + 32;
                            mensaje = txtGrados.text +
                                "°C = " +
                                grados.toString() +
                                "°F";
                          }
                        }
                      });
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("Resultado :D"),
                                content: Text(mensaje),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Ok")),
                                ],
                              ));
                    })),
          )
        ]),
      ),
    );
  }
}
