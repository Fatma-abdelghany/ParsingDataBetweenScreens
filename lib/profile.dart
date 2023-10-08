import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  String username;
   Profile({required this.username,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Container(
              //     width: 200,
              //     height: 200,
              //
              //     child: Image.asset("assets/images/profile.jpg")
              // ),
              const SizedBox(height: 20,),
              Text("Name :${this.username}"),
              const SizedBox(height: 20,),
              Text("phone :01099990057013"),
              const SizedBox(height: 20,),

              Container(
                width:double.infinity ,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text(
                        "Call me"
                    )),
              )


            ],
          ),
        ),
      ),


    );
;
  }
}
