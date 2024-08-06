import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediquery=MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png',
            ),fit: BoxFit.cover),

        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: mediquery.size.height*.1,left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Login',textAlign: TextAlign.center,
                  style:
                 Theme.of(context).textTheme.bodySmall,),
                SizedBox(height: mediquery.size.height*.2,),

                Text('Welcome Back!',
                  style:
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.black,
                fontWeight: FontWeight.w800),)
              ],
            ),
          ),
        ),

      ),
    );

  }
}