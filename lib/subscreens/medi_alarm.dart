import 'dart:io';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class MediAlarm extends StatefulWidget {
  const MediAlarm({super.key});

  @override
  State<MediAlarm> createState() => _MediAlarmState();
}

class _MediAlarmState extends State<MediAlarm> {
  imageFrom() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Choose Option',
            style: fontStyle(18, buttonClr, FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                InkWell(
                  onTap: () {
                    CameraImage();
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.camera,
                          color: buttonClr,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: fontStyle(14, textClrDark, FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    GalleryImage();
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.image,
                          color: buttonClr,
                        ),
                      ),
                      Text(
                        'Gallery',
                        style: fontStyle(14, textClrDark, FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  XFile? imgPicker;

  // ignore: non_constant_identifier_names
  CameraImage() async {
    ImagePicker picker = ImagePicker();
    imgPicker = await picker.pickImage(source: ImageSource.camera);

    setState(() {});
  }

  // ignore: non_constant_identifier_names
  GalleryImage() async {
    ImagePicker picker = ImagePicker();
    imgPicker = await picker.pickImage(source: ImageSource.gallery);

    setState(() {});
  }

  TextEditingController fdateController = TextEditingController();
  TextEditingController tdateController = TextEditingController();
  TextEditingController mtimeController = TextEditingController();
  TextEditingController ltimeController = TextEditingController();
  TextEditingController ntimeController = TextEditingController();

  GlobalKey<FormState> medTimeKey = GlobalKey();

  bool isBSelected = false;
  bool isASelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Medi Alarm',
            style: fontStyle(23, textClrELight, FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Form(
              key: medTimeKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medicine Image Upload Here :',
                    style: fontStyle(16, textClrDark, FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: InkWell(
                        onTap: () {
                          imageFrom();
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffE9EEF1),
                            image: imgPicker == null
                                ? const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/imgUpload.jpg'))
                                : DecorationImage(
                                    image: Image.file(
                                      File(imgPicker!.path),
                                    ).image,
                                    fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                              padding: const EdgeInsets.all(15),
                              onPressed: () {
                                imageFrom();
                              },
                              icon: const Icon(
                                Icons.add_a_photo_sharp,
                                color: textClrLight,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Medicine Name',
                              style:
                                  fontStyle(15, textClrDark, FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '*required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                hintText: 'Medicine Name',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: buttonClr),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: buttonClr),
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
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Medicine Power',
                              style:
                                  fontStyle(15, textClrDark, FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return '*required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                hintText: 'Power',
                                suffixText: 'mg',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: buttonClr),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      const BorderSide(color: buttonClr),
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
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Text(
                          'Date',
                          style: fontStyle(16, textClrDark, FontWeight.bold),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '*required';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.none,
                            controller: fdateController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              hintText: 'From',
                              labelText: 'From',
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
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024));
                              if (pickedDate != null) {
                                setState(() {
                                  fdateController.text =
                                      DateFormat("dd - MM - yyyy")
                                          .format(pickedDate);
                                });
                              }
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return '*required';
                              }
                              return null;
                            },
                            controller: tdateController,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              hintText: 'To',
                              labelText: 'To',
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
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024));
                              if (pickedDate != null) {
                                setState(() {
                                  tdateController.text =
                                      DateFormat("dd - MM - yyyy")
                                          .format(pickedDate);
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Time',
                        style: fontStyle(16, textClrDark, FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty &&
                                mtimeController.text.isEmpty &&
                                ntimeController.text.isEmpty) {
                              return '*at least one time is required';
                            }
                            return null;
                          },
                          controller: mtimeController,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: 'Morning',
                            labelText: 'Morning',
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
                          onTap: () async {
                            final selectedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (selectedTime != null) {
                              // ignore: use_build_context_synchronously
                              mtimeController.text =
                                  // ignore: use_build_context_synchronously
                                  selectedTime.format(context);
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty &&
                                mtimeController.text.isEmpty &&
                                ntimeController.text.isEmpty) {
                              return 'At least one time is required';
                            }
                            return null;
                          },
                          controller: ltimeController,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: 'Noon',
                            labelText: 'Noon',
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
                          onTap: () async {
                            final selectedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (selectedTime != null) {
                              // ignore: use_build_context_synchronously
                              ltimeController.text =
                                  // ignore: use_build_context_synchronously
                                  selectedTime.format(context);
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty &&
                                mtimeController.text.isEmpty &&
                                ntimeController.text.isEmpty) {
                              return 'At least one time is required';
                            }
                            return null;
                          },
                          controller: ntimeController,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: 'Night',
                            labelText: 'Night',
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
                          onTap: () async {
                            final selectedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (selectedTime != null) {
                              // ignore: use_build_context_synchronously
                              ntimeController.text =
                                  // ignore: use_build_context_synchronously
                                  selectedTime.format(context);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            checkboxShape: const CircleBorder(),
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              'Before Meal',
                              style:
                                  fontStyle(14, textClrDark, FontWeight.bold),
                            ),
                            value: isBSelected,
                            activeColor: buttonClr,
                            checkColor: textClrELight,
                            onChanged: (value) {
                              setState(() {
                                isBSelected = value!;
                                if (isBSelected && isASelected) {
                                  isASelected = false;
                                }
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: CheckboxListTile(
                            checkboxShape: const CircleBorder(),
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              'After Meal',
                              style:
                                  fontStyle(14, textClrDark, FontWeight.bold),
                            ),
                            value: isASelected,
                            activeColor: buttonClr,
                            checkColor: textClrELight,
                            onChanged: (value) {
                              setState(() {
                                isASelected = value!;
                                if (isASelected && isBSelected) {
                                  isBSelected = false;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    maxLength: 60,
                    maxLines: 3,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      hintText: 'Note :',
                      labelText: 'Note :',
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
                  const SizedBox(height: 50),
                  MaterialButton(
                    height: 50,
                    color: buttonClr,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.alarm,
                          size: 20,
                          color: textClrELight,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Set Alarm',
                          style: fontStyle(16, textClrELight, FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
