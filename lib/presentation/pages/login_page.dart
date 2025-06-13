import 'package:flutter/material.dart';
import '../../core/constants/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 160.0,left: 7,right: 7,bottom: 7),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 40),
                child: Text("NeXtMovie",
                  style:
                  AppTextStyles.headingLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0,left: 7,right: 7,bottom: 7),
                child: SizedBox(width: 400,
                  child: TextField(obscureText: false,
                    decoration: InputDecoration(hintText: "Email veya kullanıcı adı",prefixIcon: Icon(Icons.mail)),
                    style: AppTextStyles.inputStyle,
                    controller: emailController,
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
                padding: const EdgeInsets.only(top: 23.0,left: 7,right: 7,bottom: 7),
                child: SizedBox(height: 60, width: 360,
                  child: ElevatedButton(onPressed: (){}, child: Text("Giriş Yap",
                    style: AppTextStyles.buttonStyle,),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),)),
                ),
              ),
              Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hala bir hesabın yok mu?",style: AppTextStyles.bodyLarge,),
                    SizedBox(width: 5),
                    Text("Kayıt Ol",style:AppTextStyles.buttonStyles),
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
