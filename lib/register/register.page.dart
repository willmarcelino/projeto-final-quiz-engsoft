import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/login/login.page.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:quiz_app/widgets/button.dart';
import 'package:quiz_app/widgets/input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

FirebaseAuth auth = FirebaseAuth.instance;

class _RegisterPageState extends State<RegisterPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _password2 = TextEditingController();
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

  _userRegister() async {
    try {
      await Firebase.initializeApp();
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text)
          .then((_) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginPage())));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Senha muito Fraca');
      } else if (e.code == 'email-already-in-use') {
        print('E-mail já utilizado');
      }
    } catch (e) {
      print(e);
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
          Input(
            'Confirme a senha',
            true,
            controller: _password2,
          ),
          Button(
            'Registrar',
            onPressed: () => _userRegister(),
          ),
          Button(
            'Faça Login',
            onPressed: () => {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()))
            },
          ),
        ],
      ),
    );
  }
}
