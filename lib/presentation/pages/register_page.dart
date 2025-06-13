import 'package:flutter/material.dart';
import '../../core/constants/app_text_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var nameController = TextEditingController();
  var surnameController = TextEditingController();
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
           SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.only(top: 60.0,left: 8,right: 8,bottom: 7),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 5.0,bottom: 40),
                       child: Text("NeXtMovie",
                         style:
                           AppTextStyles.headingLarge,
                         ),
                     ),
                     Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox( width: 185,
                          child:
                              TextField(
                                obscureText: false,
                                decoration: InputDecoration(hintText: "Ad",prefixIcon: Icon(Icons.person) ),
                                style: AppTextStyles.inputStyle,
                                controller: nameController,
                              ),
                          ),
                         SizedBox(width: 5),
                         SizedBox( width: 185,
                           child: TextField(
                             obscureText: false,
                             decoration: InputDecoration(hintText: "Soyad",prefixIcon: Icon(Icons.person) ),
                             style: AppTextStyles.inputStyle,
                             controller: surnameController,
                           ),
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 17.0,left: 7,right: 7,bottom: 7),
                       child: SizedBox(width: 400,
                         child: TextField(obscureText: false,
                           decoration: InputDecoration(hintText: "Email",prefixIcon: Icon(Icons.mail)),
                           style: AppTextStyles.inputStyle,
                           controller: emailController,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 17.0,left: 7,right: 7,bottom: 7),
                       child: SizedBox(width: 400,
                         child: TextField(obscureText: false,
                           decoration: InputDecoration(hintText: "Kullanıcı Adı",prefixIcon: Icon(Icons.person_search_sharp)),
                           style: AppTextStyles.inputStyle,
                           controller: usernameController,
                         ),
                       ),
                     ),
             
                     Padding(
                       padding: const EdgeInsets.only(top: 17.0,left: 7,right: 7,bottom: 7),
                       child: SizedBox(width: 400,
                         child: TextField(obscureText: true,
                           decoration: InputDecoration(hintText: "Şifre",prefixIcon: Icon(Icons.lock)),
                           style: AppTextStyles.inputStyle,
                           controller: passwordController,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 9,left: 7,right: 7,bottom: 7),
                       child: SizedBox(width: 400,
                         child: TextField(obscureText: true,
                           decoration: InputDecoration(hintText: "Şifreyi Doğrula",prefixIcon: Icon(Icons.lock)),
                           style: AppTextStyles.inputStyle,
                           controller: passwordConfirmController,
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 23.0,left: 7,right: 7,bottom: 7),
                       child: SizedBox(height: 60, width: 360,
                           child: ElevatedButton(onPressed: (){},
                             style: ElevatedButton.styleFrom
                               (backgroundColor: Colors.white,shape:
                             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),),
                               child: Text("Kayıt Ol",
                             style: AppTextStyles.buttonStyle)),
                     ),
                     ),
                     Center(
                       child: Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Hesabın var mı?",style: AppTextStyles.bodyLarge,),
                           SizedBox(width: 5),
                           Text("Giriş Yap",style:AppTextStyles.buttonStyles),
                         ],
                       ),
                     ),
             
                   ],
                 ),
               ),
           ),

    );
  }
}
