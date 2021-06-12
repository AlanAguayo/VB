import 'package:flutter/material.dart';
import 'package:pracitca2/settings/color_settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

class IntencionesScreen extends StatelessWidget {
  const IntencionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = ImagePicker();
    String pathImage;
    return Scaffold(
      backgroundColor: ColorApp.secundaryBackColorApp,
      appBar: AppBar(
        backgroundColor: ColorApp.primarybackColorApp,
        title: Text("Intenciones"),
      ),
      body: ListView(
        children: [
          //Abrir una pagina web / Llamada telefonica / Enviar Email / Mandar SMS / Tomar Foto
          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Abir pagina web",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "www.itcelaya.edu.mx",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.language),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _OpenURL();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Realizar llamada telefonica",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "461 145 4178",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.phone),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _MakeCallPhone();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Enviar SMS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "461 145 4178",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.message),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _SendSMS();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Enviar Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "agasamcao99@gmail.com",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.mail),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _SendEMAIL();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Tomar Fotografia",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Sonrie :D",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.camera),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _OpenCamera();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _OpenURL() async {
    const url = 'http://www.itcelaya.edu.mx';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Future<void> _MakeCallPhone() async {
    const tel = 'tel:4611454178';
    if (await canLaunch(tel)) {
      await launch(tel);
    }
  }

  Future<void> _SendSMS() async {
    const tel = 'sms:4611454178';
    if (await canLaunch(tel)) {
      await launch(tel);
    }
  }

  Future<void> _SendEMAIL() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'agasamcao99@gmail.com',
        query: 'subject=Hola Mundo&body=Hola, buen dia :D');

    var email = params.toString();
    if (await canLaunch(email)) {
      await launch(email);
    }
  }

  Future<void> _OpenCamera() async {
    //final foto = image.getImage(source: ImageSource.camera);
    //pathImage = foto.path;

    //if (await canLaunch(tel)) {
    //  await launch(tel);
    //}
  }
}
