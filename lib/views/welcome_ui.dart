import 'package:dti_sau_project/views/login_ui.dart';
import 'package:dti_sau_project/views/signup_ui.dart';
import 'package:flutter/material.dart';

class WelcomeUi extends StatefulWidget {
  const WelcomeUi({super.key});

  @override
  State<WelcomeUi> createState() => _WelcomeUiState();
}

class _WelcomeUiState extends State<WelcomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.125,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.65,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.125,
              ),
              Text(
                'DTI SAU APP 2023',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Created by kakalamand DTI SAU',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'luv luv luv luv luv luv luv luv ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.125,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginUi(),
                          ));
                    },
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.3,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.5),
                      ),
                    ),
                    child: Text('LOGIN'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUi(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.3,
                        MediaQuery.of(context).size.height * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.5),
                      ),
                    ),
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
