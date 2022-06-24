
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'telas/home_page.dart';

class SignIn extends StatefulWidget {

   @override
   _SignInState createState() => _SignInState();
 }


 class _SignInState extends State<SignIn> {

   Future _googleSignUp() async {
     try {
       final GoogleSignIn _googleSignIn = GoogleSignIn(
         scopes: [
           'email'
         ],
       );
       final FirebaseAuth _auth = FirebaseAuth.instance;

       final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
       final GoogleSignInAuthentication googleAuth = await googleUser
           .authentication;

       final AuthCredential credential = GoogleAuthProvider.credential(
         accessToken: googleAuth.accessToken,
         idToken: googleAuth.idToken,
       );

       final User? user = (await _auth.signInWithCredential(credential))
           .user;
       print("signed in${user!.displayName}");

       return user;
     } catch (e) {
      var e;

       print(e.message);
     }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: double.infinity
        ,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login para continuar"),
            Text("Envio",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.green.shade900,
                      offset: Offset(3, 3),
                    )
                  ]
              ),
            ),
            SignInButton(
              text: "Sign up with Google",
              Buttons.Google,
              onPressed: () {
                 _googleSignUp().then(
                       (value) =>  Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context)=> HomePage(),
                          ),
                        ),
                 );
              },
            ),

          ],
        ),
      ),
    );
  }
}




