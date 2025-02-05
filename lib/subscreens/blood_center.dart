import 'package:doczone/subscreens/blood_bank.dart';
import 'package:doczone/subscreens/request_for_blood.dart';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:doczone/widgets/home_button.dart';
import 'package:flutter/material.dart';

class BloodCenter extends StatefulWidget {
  const BloodCenter({super.key});

  @override
  State<BloodCenter> createState() => _BloodCenterState();
}

class _BloodCenterState extends State<BloodCenter> {
  requestInfo() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 8,
                child: Text(
                  'My Blood Request',
                  textAlign: TextAlign.center,
                  style: fontStyle(20, buttonClr, FontWeight.bold),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 2,
                  color: buttonClr,
                ),
                Text(
                  'Patient Name  :   User_name',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Patient Age  :   24',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Blood Group  :   B+',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Number of Bags  :   2',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Contact Number  :   01900000001',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Date & Time  :   Date : 28 May, 2023 & Time : 5:30pm',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Hospital Name  :   Labaid Hospital Ltd.',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Hospital Location  :   Science Lab, Dhaka-1200',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Patient Details  :   Blood Cancer',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 2,
                  color: buttonClr,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width * 0.25,
                        padding: const EdgeInsets.all(12),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Done',
                          style: fontStyle(15, Colors.white, FontWeight.w600),
                        ),
                      ),
                      MaterialButton(
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.all(12),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel Request',
                          style: fontStyle(15, Colors.white, FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  acceptInfo() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 8,
                child: Text(
                  'Blood Request',
                  textAlign: TextAlign.center,
                  style: fontStyle(20, buttonClr, FontWeight.bold),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Column(
                  children: [
                    Text(
                      'Requested By',
                      style: fontStyle(15, textClrDLight, FontWeight.w500),
                    ),
                    Text(
                      'User_name',
                      style: fontStyle(18, textClrDark, FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Profile',
                            style: fontStyle(16, buttonClr, FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          width: 2,
                          height: 20,
                          color: buttonClr,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            size: 22,
                            color: buttonClr,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 2,
                  color: buttonClr,
                ),
                Text(
                  'Patient Name  :   User_name',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Patient Age  :   24',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Blood Group  :   B+',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Number of Bags  :   2',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Contact Number  :   01900000001',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Date  :   28 May, 2023',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Time  :   5 : 30 pm',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Hospital Name  :   Labaid Hospital Ltd.',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Text(
                  'Hospital Location  :   Science Lab, Dhaka-1200',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    'Patient Details  :   Blood Cancer',
                    style: fontStyle(16, textClrDark, FontWeight.w600),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 2,
                  color: buttonClr,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.all(12),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Done',
                          style: fontStyle(15, Colors.white, FontWeight.w600),
                        ),
                      ),
                      MaterialButton(
                        height: 45,
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.all(12),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: fontStyle(15, Colors.white, FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const HomeButton(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Blood Center',
            style: fontStyle(23, textClrELight, FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        isOn == true
                            ? TextSpan(
                                text: 'Available ',
                                style: fontStyle(
                                    17, Colors.green, FontWeight.bold))
                            : TextSpan(
                                text: 'Not Available ',
                                style: fontStyle(
                                    16, Colors.grey, FontWeight.bold)),
                        TextSpan(
                            text: 'for Blood Donation',
                            style: fontStyle(16, textClrDark, FontWeight.bold)),
                      ],
                    ),
                  ),
                  Switch(
                      value: isOn,
                      onChanged: (val) {
                        setState(() {
                          isOn = val;
                        });
                      }),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 2,
                color: buttonClr,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BloodBank(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/bloodBankBg.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Blood Bank',
                        style: fontStyle(26, textClrELight, FontWeight.bold),
                      ),
                      Text(
                        'GIFT OF LIFE',
                        style: fontStyle(16, textClrELight),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 2,
                color: buttonClr,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RequestForBlood(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/images/requestforBlood.png'),
                          fit: BoxFit.cover),
                      color: const Color(0xffBACDDB)),
                  child: Column(
                    children: [
                      Text(
                        'Request for Blood',
                        textAlign: TextAlign.center,
                        style: fontStyle(26, textClrDark, FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Tap here for Submit a New Request',
                        textAlign: TextAlign.center,
                        style: fontStyle(12, textClrDLight, FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 2,
                color: buttonClr,
              ),
              ListTile(
                onTap: () {
                  requestInfo();
                },
                contentPadding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: textClrELight,
                leading: Text(
                  '1',
                  style: fontStyle(20, buttonClr, FontWeight.w700),
                ),
                title: Text(
                  'Submitted Request',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                trailing: Text(
                  'View',
                  style: fontStyle(15, buttonClr, FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 2,
                color: buttonClr,
              ),
              ListTile(
                onTap: () {
                  acceptInfo();
                },
                contentPadding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                tileColor: textClrELight,
                leading: Text(
                  '1',
                  style: fontStyle(20, buttonClr, FontWeight.w700),
                ),
                title: Text(
                  'Accepted Request',
                  style: fontStyle(16, textClrDark, FontWeight.w600),
                ),
                trailing: Text(
                  'View',
                  style: fontStyle(15, buttonClr, FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
