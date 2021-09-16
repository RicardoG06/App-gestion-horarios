import 'package:flutter/material.dart';
import '../Pages/login.dart';
import '../Widgets/header.dart';
import '../Widgets/logo.dart';
import '../Widgets/logobuho.dart';
import '../Widgets/textfieldcustom.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [
            HeaderSignUp(),
            LogoHeader(),
            Cabecera(),
            LogoBuhoHeader()
          ],
        ),
        _Titulo(),
        _TextField(),
        _Botton()
      ],
    ));
  }
}

class _Botton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color(0xffd32f2f), borderRadius: BorderRadius.circular(25)),
      child: TextButton(
        child: Text('REGISTRO',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        onPressed: () {},
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Nombre'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Email'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.phone,
              type: TextInputType.number,
              texto: 'Telefono'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginPage())),
            child: Text('LOGIN',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
          Text('/', style: TextStyle(fontSize: 25, color: Color(0xff354762))),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUpPage())),
              child: Text('REGISTRO',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff354762))))
        ],
      ),
    );
  }
}
