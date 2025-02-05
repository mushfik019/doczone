import 'package:doczone/subscreens/choose_password.dart';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class ResetPassCode extends StatefulWidget {
  const ResetPassCode({super.key});

  @override
  State<ResetPassCode> createState() => _ResetPassCodeState();
}

class _ResetPassCodeState extends State<ResetPassCode> {
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Verification Code',
            style: fontStyle(23, textClrELight, FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'We sent a code to your Phone Number',
                style: fontStyle(17, textClrDark, FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                'Enter the 6-digit verification code sent to',
                style: fontStyle(16, textClrDark, FontWeight.w600),
              ),
              Text(
                '+88019******31',
                style: fontStyle(16, textClrDark, FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty &&
                        value.length > 6 &&
                        value.length < 6) {
                      return 'Invalid Code';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  controller: codeController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    prefixIcon: const Icon(Icons.phone),
                    prefixIconColor: buttonClr,
                    hintText: '6 digit code',
                    labelText: '6 digit code',
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
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend code',
                  style: fontStyle(16, buttonClr, FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: buttonClr,
                  height: 55,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChoosePassword(),
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
