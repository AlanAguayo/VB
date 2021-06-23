import 'package:flutter/material.dart';
import 'package:pracitca2/settings/color_settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:device_apps/device_apps.dart';
//import 'package:image_picker/image_picker.dart';

class IntencionesScreen extends StatelessWidget {
  const IntencionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final image = ImagePicker();
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

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Whatsapp",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Enviar Mensaje",
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
                _SendWhatsapp();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Facebook",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Abrir TecNM",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.facebook),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _SendMessenger();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Galeria",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Google photos",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.photo_album),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _OpenCalc();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Youtube",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Abrir video",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.movie),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _OpenYoutube();
              },
            ),
          ),

          Card(
            elevation: 10.0,
            child: ListTile(
              title: Text(
                "Maps",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Ubicacion TecNM",
                  ),
                  Icon(Icons.touch_app),
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.map),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                _OpenMaps();
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
////////////////////////////////////////////////////////////
  Future<void> _SendWhatsapp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+052-(461)3280190',
      text: "Hey! Esto es una prueba",
    );
    await launch('$link');
  }

  Future<void> _SendMessenger() async {
    String fbProtocolUrl;
    fbProtocolUrl = 'fb://page/page_id';

    String fallbackUrl = 'https://www.facebook.com/itcelayaOficial';

    try {
      bool launched = await launch(fbProtocolUrl, forceSafariVC: false);

      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false);
    }
  }

  Future<void> _OpenCalc() async {
    DeviceApps.openApp('com.google.android.apps.photos');
  }

  Future<void> _OpenYoutube() async {
    const url =
        'https://www.youtube.com/watch?v=CoPnDnJjVSk&list=PLl_hIu4u7P677H9f6zPOHiOz2izkvQq2E';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se encontro $url';
    }
  }

  Future<void> _OpenMaps() async {
    String googleUrl =
        'https://www.google.com.mx/maps/place/Instituto+Tecnol%C3%B3gico+de+Celaya/@20.5344854,-100.824445,15.25z/data=!4m9!1m2!2m1!1stecnm+cela!3m5!1s0x842cba95dd73df57:0xbc5d6466d4b01fba!8m2!3d20.5385565!4d-100.8192253!15sCgx0ZWNubSBjZWxheWFaDiIMdGVjbm0gY2VsYXlhkgERcHVibGljX3VuaXZlcnNpdHmaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUkJjMHQxWDJSbkVBRQ';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'No se encontro la ubicacion';
    }
  }
}
