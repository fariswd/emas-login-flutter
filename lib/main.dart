import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login page',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounddot.jpg'),
                repeat: ImageRepeat.repeat,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 125.0, 0.0, 70.0),
              child: Container(
                child: Image.asset('assets/logo-emas.png', height: 35.0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Masukkan nomor ponsel atau email yang telah terdaftar',
                  style: TextStyle(color: Color(0xFF666666), fontSize: 13.0),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextField(
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                    hintText: 'Nomor Ponsel atau Email',
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextField(
                  obscureText: true,
                  maxLength: 6,
                  decoration: InputDecoration(
                    counterText: '',
                    // border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.grey,
                    ),
                    hintText: 'PIN atau Kata Sandi',
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Lupa PIN?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Color(0xFFC8382D),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: RaisedButton(
                      child: Text(
                        'MASUK',
                        style: TextStyle(color: Colors.grey[300]),
                      ),
                      color: Color(0xFFC8382D),
                      // onPressed: () {},
                      highlightColor: Colors.redAccent,
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Belum Memiliki Akun? ',
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      'DAFTAR',
                      style: TextStyle(
                        color: Color(0xFFA59354),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Text(
                  'Tidak dapat mengakses akun anda?',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'HUBUNGI KAMI',
                  style: TextStyle(
                    color: Color(0xFFA59354),
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
