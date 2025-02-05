import 'package:doczone/screens/login_page.dart';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class ChoosePassword extends StatefulWidget {
  const ChoosePassword({super.key});

  @override
  State<ChoosePassword> createState() => _ChoosePasswordState();
}

class _ChoosePasswordState extends State<ChoosePassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPassController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New Password',
            style: fontStyle(23, textClrELight, FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            children: [
              // SvgPicture.asset('assets/images/logo.svg'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Create a new password that is\nat least 8 charasters long.',
                  textAlign: TextAlign.center,
                  style: fontStyle(15, textClrDark, FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password can't be Empty";
                  }
                  if (value.length < 8) {
                    return 'Password must contain atleast 8 Characters';
                  }
                  return null;
                },
                controller: newPasswordController,
                obscureText: isObscure,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  prefixIcon: const Icon(
                    Icons.key,
                    color: buttonClr,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: isObscure == true
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  hintText: 'New Password',
                  labelText: 'New Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: buttonClr),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: buttonClr),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.redAccent),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.redAccent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value != newPasswordController.text.toString()) {
                      return "Password doesn't match";
                    }
                    return null;
                  },
                  controller: confirmNewPassController,
                  obscureText: isObscure,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    prefixIcon: const Icon(
                      Icons.key,
                      color: buttonClr,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: isObscure == true
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                    hintText: 'Retype New Password',
                    labelText: 'Retype New Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: buttonClr),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: buttonClr),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.redAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: buttonClr,
                  height: 55,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Text(
                    'Submit',
                    style: fontStyle(16, Colors.white, FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
