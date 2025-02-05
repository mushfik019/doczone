import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class AvailableDonor extends StatefulWidget {
  const AvailableDonor({super.key});

  @override
  State<AvailableDonor> createState() => _AvailableDonorState();
}

class _AvailableDonorState extends State<AvailableDonor> {
  donorInfo() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Donor Name',
            textAlign: TextAlign.center,
            style: fontStyle(22, textClrDark, FontWeight.bold),
          ),
          actionsPadding: const EdgeInsets.symmetric(horizontal: 10),
          actions: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 2,
                  color: buttonClr,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact  :   ',
                      style: fontStyle(22, Colors.blue, FontWeight.bold),
                    ),
                    MaterialButton(
                      color: buttonClr,
                      shape: const CircleBorder(),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.phone,
                          size: 22,
                          color: textClrELight,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 2,
              color: buttonClr,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MaterialButton(
                height: 45,
                minWidth: MediaQuery.of(context).size.width * 0.35,
                padding: const EdgeInsets.all(12),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'View Details',
                  style: fontStyle(15, Colors.white, FontWeight.w700),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  TextEditingController locationController = TextEditingController();
  TextEditingController rangeController = TextEditingController();

  List<String> bloodList = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];

  String? selectedBlood;

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
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Expanded(
                      //   flex: 10,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'Current Location',
                      //         style: fontStyle(
                      //             15, textClrDark, FontWeight.w700),
                      //       ),
                      //       const SizedBox(height: 5),
                      //       TextFormField(
                      //         validator: (value) {
                      //           if (value!.isEmpty) {
                      //             return '*required';
                      //           }

                      //           return null;
                      //         },
                      //         keyboardType: TextInputType.streetAddress,
                      //         controller: locationController,
                      //         decoration: InputDecoration(
                      //           contentPadding: const EdgeInsets.symmetric(
                      //               vertical: 10, horizontal: 15),
                      //           prefixIconColor: buttonClr,
                      //           hintText: 'Current Loction',
                      //           suffixIcon: IconButton(
                      //             onPressed: () {},
                      //             icon: const Icon(Icons.my_location,
                      //                 color: buttonClr),
                      //           ),
                      //           enabledBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide:
                      //                 const BorderSide(color: buttonClr),
                      //           ),
                      //           focusedBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide:
                      //                 const BorderSide(color: buttonClr),
                      //           ),
                      //           errorBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide: const BorderSide(
                      //                 color: Colors.redAccent),
                      //           ),
                      //           focusedErrorBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide: const BorderSide(
                      //                 color: Colors.redAccent),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(width: 5),
                      Expanded(
                        flex: 10,
                        child: DropdownButtonFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '*required';
                            }
                            return null;
                          },
                          value: selectedBlood,
                          items: bloodList
                              .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item),
                                  ))
                              .toList(),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: 'Blood Group',
                            labelText: 'Blood Group',
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
                              borderSide:
                                  const BorderSide(color: Colors.redAccent),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.redAccent),
                            ),
                          ),
                          onChanged: (bloodValue) {
                            setState(() {
                              selectedBlood = bloodValue;
                            });
                          },
                        ),
                      ),
                      // const SizedBox(width: 5),
                      // Expanded(
                      //   flex: 6,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'Range',
                      //         style: fontStyle(
                      //             15, textClrDark, FontWeight.w700),
                      //       ),
                      //       const SizedBox(height: 5),
                      //       TextFormField(
                      //         validator: (value) {
                      //           if (value!.isEmpty) {
                      //             return '*required';
                      //           }
                      //           if (value.length > 3) {
                      //             return 'Invalid';
                      //           }
                      //           return null;
                      //         },
                      //         controller: rangeController,
                      //         keyboardType: TextInputType.number,
                      //         decoration: InputDecoration(
                      //           contentPadding: const EdgeInsets.symmetric(
                      //               vertical: 10, horizontal: 15),
                      //           hintText: 'Range',
                      //           suffix: const Text('km'),
                      //           enabledBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide:
                      //                 const BorderSide(color: buttonClr),
                      //           ),
                      //           focusedBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide:
                      //                 const BorderSide(color: buttonClr),
                      //           ),
                      //           errorBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide: const BorderSide(
                      //                 color: Colors.redAccent),
                      //           ),
                      //           focusedErrorBorder: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(8),
                      //             borderSide: const BorderSide(
                      //                 color: Colors.redAccent),
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: MaterialButton(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: buttonClr,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: const Icon(
                            Icons.search,
                            size: 30,
                            color: textClrELight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ExpansionTile(
                  //   collapsedShape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(15)),
                  //   collapsedBackgroundColor: Colors.yellow[100],
                  //   tilePadding: const EdgeInsets.symmetric(
                  //       vertical: 15, horizontal: 20),
                  //   childrenPadding: const EdgeInsets.symmetric(vertical: 15),
                  //   title: Text(
                  //     'If there is an emergency,\nyou can find a blood donor nearby.',
                  //     textAlign: TextAlign.center,
                  //     style: fontStyle(14, textClrDLight, FontWeight.w600),
                  //   ),
                  //   children: [

                  //   ],
                  // ),
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: ListTile(
                      onTap: () {
                        donorInfo();
                      },
                      tileColor: Colors.yellow[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text(
                          'O+',
                          style: fontStyle(16, textClrELight, FontWeight.w700),
                        ),
                      ),
                      title: Text(
                        'MD Akkas Ali',
                        style: fontStyle(16, textClrDark, FontWeight.w700),
                      ),
                      trailing: Text(
                        'View',
                        textAlign: TextAlign.center,
                        style: fontStyle(15, buttonClr, FontWeight.w600),
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
