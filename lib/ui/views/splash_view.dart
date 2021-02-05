import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model_example/scoped_model/splash_model.dart';
import 'package:scoped_model_example/ui/views/base_view.dart';
import 'package:scoped_model_example/ui/views/login_view.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashModel>(
        builder: (context, child, model) => Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 61,
                      width: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: 250,
                      height: 46,
                      child: RaisedButton(
                        color: Color(0xFF0071ED),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => LoginView()));
                          Get.to(LoginView());
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
