import 'package:expenz1/widject/bottem_Button.dart';
import 'package:flutter/material.dart';

class Userdata extends StatefulWidget {
  const Userdata({super.key});

  @override
  State<Userdata> createState() => _UserdataState();
}

class _UserdataState extends State<Userdata> {
  final frome_key = GlobalKey<FormState>();

  bool check = false;

  final TextEditingController user_name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController passw = TextEditingController();
  final TextEditingController com_passw = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    user_name.dispose();
    email.dispose();
    passw.dispose();
    com_passw.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 870,
                    decoration: BoxDecoration(color: Color(0xff7F3DFF)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Container(
                      width: double.infinity,
                      height: 690,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Form(
                        key: frome_key,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 20),
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter your name";
                                  }
                                },

                                controller: user_name,
                                decoration: InputDecoration(
                                  hintText: "enter name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter your email";
                                  }
                                },
                                controller: email,
                                decoration: InputDecoration(
                                  hintText: "emai",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter your password";
                                  }
                                },
                                controller: passw,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "enter name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter your name";
                                  }
                                },
                                controller: com_passw,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "enter name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "remember me",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Checkbox(value: check, onChanged: (value) {}),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (frome_key.currentState!.validate()) {
                                    //metanin balanne ara uda dapuwa valid da kiyala
                                    String Uusername = user_name.text;
                                    String Upassword = passw.text;
                                    String Uemail = email.text;
                                    String Ucompassw = com_passw.text;

                                    print(
                                      "$Ucompassw $Uemail $Upassword  $Uusername",
                                    );
                                  }
                                },
                                child: BottemButton(
                                  button_name: "Submit",
                                  butto_collor: Color(0xff7F3DFF),
                                  width: 0.55,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 30),
                    child: Text(
                      "      Enter your \n Personal Details",
                      style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.w700,
                        color: Colors.white54,
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
