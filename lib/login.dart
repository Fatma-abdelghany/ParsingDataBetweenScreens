import 'package:flutter/material.dart';
import 'package:parsing_data/profile.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userNameCon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               TextField(
                controller: userNameCon,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName"
                ),
              ),
              const SizedBox(height: 20,),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",

                ),
              ),
              const SizedBox(height: 20,),

              Container(
                width:double.infinity ,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(username: userNameCon.text,),
                          ));
                    },
                    child: const Text(
                        "Login"
                    )),
              )


            ],
          ),
        ),
      ),


    );
  }
}
