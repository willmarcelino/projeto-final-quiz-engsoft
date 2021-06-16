import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/register/register.page.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:quiz_app/widgets/button.dart';
import 'package:quiz_app/widgets/input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

FirebaseAuth auth = FirebaseAuth.instance;

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff141e30), Color(0xff243b55)]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('assets/icons/iconequiz.jpg'),
              ),
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  _userLogin() async {
    try {
      await Firebase.initializeApp();
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      )
          .then((_) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => WelcomeScreen()));
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Usuário não encontrado');
      } else if (e.code == 'wrong-password') {
        print('Senha errada');
      }
    }
  }

  _body() {
    return Form(
      child: Column(
        children: [
          Input(
            'E-mail',
            false,
            controller: _email,
          ),
          Input(
            'Senha',
            true,
            controller: _password,
          ),
          Button(
            'Entrar',
            onPressed: () => _userLogin(),
          ),
          Button(
            'Cadastre-se',
            onPressed: () => {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => RegisterPage()))
            },
          ),
        ],
      ),
    );
  }
}
