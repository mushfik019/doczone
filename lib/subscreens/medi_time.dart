import 'package:doczone/subscreens/medi_alarm.dart';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class MediTime extends StatefulWidget {
  const MediTime({super.key});

  @override
  State<MediTime> createState() => _MediTimeState();
}

class _MediTimeState extends State<MediTime> {
  mediTimeAction() {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        height: 120,
        padding: const EdgeInsets.fromLTRB(16, 15, 16, 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 3,
              width: 50,
              decoration: BoxDecoration(
                color: textClrLight,
                borderRadius: BorderRadius.circular(33),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.delete),
              title: Text(
                'Delete',
                style: fontStyle(15, textClrDark, FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: buttonClr,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MediAlarm()));
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text(
              'Medi Time',
              style: fontStyle(23, textClrELight, FontWeight.w700),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onLongPress: () {
                        mediTimeAction();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: ExpansionTile(
                          leading: Image.asset('assets/images/img.png'),
                          title: Text(
                            'M-Lucas 10mg',
                            style: fontStyle(16, textClrDark, FontWeight.w600),
                          ),
                          subtitle: Text(
                            'Before Meal',
                            style: fontStyle(14, textClrDLight),
                          ),
                          children: [
                            ListTile(
                              leading: Text(
                                'Date : ',
                                style:
                                    fontStyle(15, textClrDark, FontWeight.w700),
                              ),
                              title: Text(
                                '29 - March - 23   To   03 - April - 23',
                                style:
                                    fontStyle(16, textClrDark, FontWeight.w500),
                              ),
                            ),
                            ListTile(
                              leading: Text(
                                'Time : ',
                                style:
                                    fontStyle(15, textClrDark, FontWeight.w700),
                              ),
                              title: Text(
                                'No Medicine - No Medicine - 10:00 pm',
                                style:
                                    fontStyle(16, textClrDark, FontWeight.w500),
                              ),
                            ),
                            ListTile(
                              leading: Text(
                                'Note : ',
                                style:
                                    fontStyle(15, textClrDark, FontWeight.w700),
                              ),
                              title: Text(
                                'If you have shortness of breath',
                                style:
                                    fontStyle(16, textClrDark, FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
