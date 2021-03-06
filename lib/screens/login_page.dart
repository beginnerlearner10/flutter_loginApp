import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample/pallate.dart';
import 'package:sample/widgets/background_image.dart';
import 'package:sample/widgets/password_input.dart';
import 'package:sample/widgets/text_input.dart';
import 'package:sample/widgets/widgets.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      'RajLogn',
                      style: kHeading,
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextInput(
                            icon: FontAwesomeIcons.solidEnvelope,
                            hint: 'Email',
                            textInputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,

                          ),
                          PasswordInput(
                            icon: FontAwesomeIcons.lock,
                            hint: 'Password',
                            textInputAction: TextInputAction.next,

                          ),
                          Text(
                            'Forget Password?',
                            style: kBodyText,
                          ),
                          
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: FlatButton(
                              onPressed: (){},
                              child:Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text('Login',style: kBodyText,),
                              ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],),
          ),
        ),
      ],
    );
  }
}




