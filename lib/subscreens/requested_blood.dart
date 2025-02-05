import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class RequestedBlood extends StatefulWidget {
  const RequestedBlood({super.key});

  @override
  State<RequestedBlood> createState() => _RequestedBloodState();
}

class _RequestedBloodState extends State<RequestedBlood> {
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'O+',
                        style: fontStyle(40, Colors.red, FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 3,
                      height: 60,
                      color: buttonClr,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: fontStyle(16, Colors.blue, FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          MaterialButton(
                            color: buttonClr,
                            shape: const CircleBorder(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(6),
                              child: Icon(
                                Icons.phone,
                                size: 20,
                                color: textClrELight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                  'Time  :   5 : 30pm',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Requested By  - User_name',
                        style: fontStyle(15, textClrDLight, FontWeight.w600),
                      ),
                    ),
                  ],
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
                          'Accept',
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
                          'Skip',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'You can accept only ONE Blood Request',
                    style: fontStyle(15, textClrDLight, FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 2,
                    color: buttonClr,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      requestInfo();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: ListTile(
                        tileColor: Colors.yellow[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 20),
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(
                            'O+',
                            style:
                                fontStyle(16, textClrELight, FontWeight.bold),
                          ),
                        ),
                        title: Text(
                          'MD Akkas Ali',
                          style: fontStyle(16, textClrDark, FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Emergency',
                          style: fontStyle(14, Colors.red, FontWeight.bold),
                        ),
                        trailing: Text(
                          'View Details',
                          style: fontStyle(16, buttonClr, FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
