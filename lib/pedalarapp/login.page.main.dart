import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String matricula = '';
  String senha = '';
  bool lembrar = false;

  get textStyle => null;

  get mainAxisAligment => null;

  Widget build(BuildContext context) {
    var logo_prefeitura;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Color(0xffC0BA63),
              Color(0xffb7b367),
              Color(0xff88B188),
              Color(0xff67a68e)
            ],
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 92,
                  height: 112,
                  child: Image.asset('assets/images/logo_prefeitura.png'),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 312,
                  height: 111,
                  child: Image.asset('assets/images/logo_pedalar.png'),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Matricula',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff2D2F2B),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    onChanged: (text) {
                      matricula = text;
                    },
                    autofocus: false,
                    keyboardType: TextInputType.number,
                    style:
                        new TextStyle(color: Color(0xffFDC12B), fontSize: 16),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outlined,
                            color: Color(0xffFDC12B)),
                        prefixIconColor: Color(0xffFDC12B),
                        hintText: "00000-0",
                        hintStyle:
                            TextStyle(color: Color(0xffFDC12B), fontSize: 16),
                        border: OutlineInputBorder(),
                        labelStyle:
                            TextStyle(color: Color(0xffFDC12B), fontSize: 16)),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Senha',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff2D2F2B),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: TextFormField(
                    onChanged: (text) {
                      senha = text;
                    },
                    autofocus: false,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style:
                        new TextStyle(color: Color(0xffFDC12B), fontSize: 16),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline,
                            color: Color(0xffFDC12B)),
                        prefixIconColor: Color(0xffFDC12B),
                        iconColor: Color(0xffFDC12B),
                        suffixIconColor: Color(0xffFDC12B),
                        border: OutlineInputBorder(),
                        hintText: "******",
                        hintStyle:
                            TextStyle(color: Color(0xffFDC12B), fontSize: 16),
                        labelStyle:
                            TextStyle(color: Color(0xffFDC12B), fontSize: 16)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Color(0xffEF343A),
                      //hoverColor: Color(0xff2D2F2B),
                      activeColor: Color(0xff2D2F2B),
                      side: BorderSide(
                        color: Color(0xff2D2F2B), //your desire colour here
                        width: 3,
                      ),
                      value: lembrar,
                      onChanged: (checked) {
                        print(checked);
                        setState(() {
                          lembrar = !lembrar;
                        });
                      },
                    ),
                    Text('Lembrar de mim por 365 dias'),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                FlatButton(
                    color: Color(0xff007649),
                    height: 51.0,
                    textColor: Color(0xff2D2F2B),
                    padding: EdgeInsets.all(8.0),
                    splashColor: Color(0xffFDC12B),
                    onPressed: () {
                      if (matricula == '36438' && senha == '123') {
                        print('correto');
                      } else {
                        print('login inválido');
                      }
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Entrar",
                          style: TextStyle(fontSize: 20.0),
                          textAlign: TextAlign.center),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
