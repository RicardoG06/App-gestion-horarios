import 'package:flutter/material.dart';
import '../Pages/signup.dart';
import '../Widgets/header.dart';
import '../Widgets/logo.dart';
import '../Widgets/logobuho.dart';
import '../Widgets/textfieldcustom.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [HeaderLogin(), LogoHeader(), Cabecera(), LogoBuhoHeader()],
        ),
        _Titulo(),
        SizedBox(height: 10),
        _EmailAndPassword(),
        _ForgotPassword(),
        SizedBox(height: 10),
        _BottonSignIn()
      ],
    ));
  }
}

class _BottonSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color(0xffd32f2f), borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        child: Text('INGRESAR',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        onPressed: () {},
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: Text('Olvidaste tu contraseña?',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff354762))),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Email'),
          SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
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
          Text('LOGIN',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff354762))),
          Text('/', style: TextStyle(fontSize: 25, color: Color(0xff354762))),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUpPage())),
              child: Text('REGISTRO',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)))
        ],
      ),
    );
  }
}
