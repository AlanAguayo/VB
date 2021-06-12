import 'package:flutter/material.dart';
import 'package:pracitca2/screens/dashboard_screen.dart';
import 'package:pracitca2/settings/color_settings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUserController = TextEditingController();
    TextEditingController txtPassController = TextEditingController();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Wallpaper.jpg')))),
        Card(
          color: ColorApp.secundaryBackColorApp,
          margin: EdgeInsets.all(30.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: txtUserController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: 'Email User',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: txtPassController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: 'Password User',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 150,
            child: FloatingActionButton(
                splashColor: ColorApp.splashColorApp,
                backgroundColor: ColorApp.colorbutton,
                child: Icon(Icons.login),
                onPressed: () {
                  //print(txtUserController.text);
                  //print(txtPassController.text);

                  //Navegacion usando instancia del objeto de la UI
                  //Navigator.push(
                  //context,
                  // MaterialPageRoute(
                  //builder: (context) => DashboardScreen()));

                  //Navegacion usando rutas nombradas (alias)
                  Navigator.pushNamed(context, '/dashboard');
                }))
      ],
    );
  }
}
