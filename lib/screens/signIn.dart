import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercommercetrymy/helpers/utils_helper.dart';
import 'package:fluttercommercetrymy/screens/signIn.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pretty_json/pretty_json.dart';

class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}



class _AppSignInState extends State<AppSignIn>{
  @override
  Widget build(BuildContext context) {
    /*
    *  Setting default value in SignInPage
    *
    * */
    double defaultFontSize = 14;


    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
//                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF45cbb),
                    hintText: 'Enter Your Login Id',
                    focusColor: Color(0xFFF2F2F2)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF45cbb),
                      hintText: 'Enter Your Login Password',
                      focusColor: Color(0xFFF2F2F2)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Login In Page'),
                  ),
                  onPressed: _validateFunction,
                ),
              ),
            )
          ],
        )
      ),
    );
  }




  Future<void> _validateFunction() async {
    Fluttertoast.showToast(
        msg: 'msg',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0



    );

    /*
    * This is authentication
    *
    * */
    String username = 'admin';
    String password = 'admin';
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    print('basicauth: $basicAuth');

    var url = 'http://edumis.gyanvitech.com/family/apiservice/myflats/';
    var response = await http.post(url,  body: jsonEncode(<String, String>{
      'user': '1001',
    }),
    headers: <String, String>{'authorization': basicAuth});
//    headers: <String, String>{'authorization': basicAuth,
//      "Accept": "application/json"},
//    body: {'user': '1001'}

//    var queryParams = {
//     "user":"1001"
//    };
//    var baseurl = Uri.https(
//        "edumis.gyanvitech.com",
//        "/family/apiservice/myflats/");
//    var response = await http.post(
//      baseurl,
//      headers: {"Accept": "application/json",'authorization': basicAuth},
//      body: jsonEncode(<String, String>{
//        'user': '1001',
//      }),
//    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body.toString()}');

  }
}

