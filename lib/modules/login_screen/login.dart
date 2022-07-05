import 'package:e_shope/constants.dart';
import 'package:e_shope/models/login_model.dart';
import 'package:e_shope/modules/home_screen/home.dart';
import 'package:e_shope/shared/component/component.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //layouts
  Widget MobileLayout = Column(
    children: [LoginLogo(), DataFiled()],
  );

  Widget DesktopLayout = Row(
    children: [LoginLogo(), DataFiled()],
  );
  Login({
    Key? key,
  
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.width < 600) {
            return MobileLayout;
          }
          return DesktopLayout;
        },
      ),
    );
  }
}

class DataFiled extends StatelessWidget {
  DataFiled({Key? key}) : super(key: key);

//controller
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode userFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  GlobalKey<FormState> lkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: lkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " must enter your emil";
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) {
                    passwordFocus.requestFocus();
                  },
                  controller: userController,
                  keybordTyp: TextInputType.emailAddress,
                  labelText: "User email",
                  icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              MTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " must enter password";
                    }
                    return null;
                  },
                  focusNode: passwordFocus,
                  onFieldSubmitted: (value) {},
                  controller: passwordController,
                  keybordTyp: TextInputType.number,
                  labelText: "Password",
                  icon: Icons.lock),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    if (lkey.currentState!.validate()) {
                      //submit filed data
                      UserData user = UserData(
                          email: userController.text,
                          password: passwordController.text);
                      navToScreen(context, Home());
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Hava account ? "),
                  TextButton(onPressed: () {}, child: Text("Register now")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.blue,
      child: Center(
        child: Text("Login"),
      ),
    ));
  }
}
