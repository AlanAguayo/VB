import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pracitca2/settings/color_settings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.secundaryBackColorApp,
      appBar: AppBar(
        backgroundColor: ColorApp.primarybackColorApp,
        title: Text('Topicos Avanzados :)'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static-cdn.jtvnw.net/jtv_user_pictures/9beb5bc4-dfa1-47ae-8a3f-1216ce1fb08f-profile_image-70x70.png')),
              accountName:
                  Text('Naisof', style: TextStyle(color: Colors.black)),
              accountEmail: Text('agasamcao99@gmail.com',
                  style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              tileColor: ColorApp.primarybackColorApp,
              leading: Icon(Icons.thermostat, color: Colors.white),
              title: Text('Conversor C - F',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, '/conversor');
              },
            ),
            ListTile(
              tileColor: ColorApp.primarybackColorApp,
              leading: Icon(Icons.phone, color: Colors.white),
              title: Text('Intenciones', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.pushNamed(context, '/intenciones');
              },
            ),
            ListTile(
              tileColor: ColorApp.primarybackColorApp,
              leading: Icon(Icons.web, color: Colors.white),
              title: Text('API REST', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: ColorApp.primarybackColorApp,
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text('Salir', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
