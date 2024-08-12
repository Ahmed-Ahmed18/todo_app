import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app_color.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {

  TextEditingController emailcontroler=TextEditingController();
  TextEditingController passwordcontroler=TextEditingController();
  TextEditingController personcontroler=TextEditingController();
  bool isobsecured=false;
  var Formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var mediquery=MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.png',
        ),fit: BoxFit.cover),
        color: AppColor.scaffoldbackground,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme ,
          title:Text('Create Account',textAlign: TextAlign.center,
            style:
            Theme.of(context).textTheme.bodySmall,) ,
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: mediquery.size.height*.1,left: 20,right: 20),
            child: Form(
              key: Formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  SizedBox(height: mediquery.size.height*.16,),
                  TextFormField(
                    validator: (value){
                      if(value==null || value.trim().isEmpty){
                        return'Please Enter Your Name';
                      }
                      return null;
                    },
                    controller:personcontroler,
                    cursorColor: AppColor.primarycolor,
                    cursorHeight: 25,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackcolor
                    ),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          fontSize: 12
                      ),
                      hintText: 'Enter Your Name',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                      label: Text('Full Name',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.primarycolor,
                            width: 2
                        ),
                      ),
                      suffixIcon: Icon(Icons.person),
                    ),

                  ),

                  TextFormField(
                    validator: (value){
                      if(value==null || value.trim().isEmpty){
                        return'Please Enter Your E-Mail Adress ';
                      }
                      return null;
                    },
                    controller:emailcontroler ,
                    cursorColor: AppColor.primarycolor,
                    cursorHeight: 25,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackcolor
                    ),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          fontSize: 12
                      ),
                      hintText: 'Enter Your E-Mail Adress',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                      label: Text('E-Mail',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.primarycolor,
                            width: 2
                        ),
                      ),
                      suffixIcon: Icon(Icons.email),
                    ),

                  ),

                  TextFormField(
                    obscureText: isobsecured,
                    validator: (value){
                      if(value==null || value.trim().isEmpty){
                        return'Please Enter Your password';
                      }
                      return null;
                    },
                    controller:passwordcontroler ,
                    cursorColor: AppColor.primarycolor,
                    cursorHeight: 25,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackcolor
                    ),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          fontSize: 12
                      ),
                      hintText: 'Enter Your password',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                      label: Text('password',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.primarycolor,
                            width: 2
                        ),
                      ),
                      suffixIcon: InkWell(
                          onTap: (){

                            setState(() {
                              isobsecured=!isobsecured;
                            });

                          },
                          child:  isobsecured ? Icon(Icons.visibility): Icon(Icons.visibility_off)),
                    ),

                  ),
                  SizedBox(height: 20,),


                  FilledButton(
                      style:
                      FilledButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
                          backgroundColor: AppColor.primarycolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      onPressed: (){
                        if(Formkey.currentState!.validate()){
                          print('is valid');
                        }
                      },
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Create My Account',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),),

                          Icon(Icons.arrow_forward_outlined),
                        ],
                      )),

                ],
              ),
            ),
          ),
        ),

      ),

    );

  }
}
