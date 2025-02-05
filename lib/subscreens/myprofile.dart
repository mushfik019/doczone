import 'dart:io';
import 'package:doczone/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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

  imageZoom() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: SizedBox(
            width: double.maxFinite,
            child: Image.file(
              File(imgPicker!.path),
              fit: BoxFit.cover,
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

  TextEditingController fullNameController =
      TextEditingController(text: 'User Name');
  TextEditingController emailController =
      TextEditingController(text: 'username@gmail.com');
  TextEditingController phoneController =
      TextEditingController(text: '01989023412');
  TextEditingController nidController =
      TextEditingController(text: '2855087564');
  TextEditingController locationController =
      TextEditingController(text: '30/1 Chasara, Narayanganj');
  TextEditingController dobController =
      TextEditingController(text: '19-07-1998');

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Container(
                color: textClrDark,
                child: Stack(
                  children: [
                    if (ModalRoute.of(context)?.canPop ?? false)
                      Positioned(
                        left: 10,
                        top: 10,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: textClrELight,
                          ),
                        ),
                      ),
                    Center(
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              if (imgPicker != null) {
                                imageZoom();
                              }
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 4, color: textClrELight),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                backgroundImage: imgPicker == null
                                    ? const AssetImage(
                                        'assets/images/profile.png')
                                    : Image.file(
                                        File(imgPicker!.path),
                                      ).image,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                imageFrom();
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: buttonClr,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3, color: textClrELight),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: textClrELight,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: fontStyle(16, textClrDark, FontWeight.w600),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '*required';
                          }
                          return null;
                        },
                        style: fontStyle(15, Colors.black54, FontWeight.w500),
                        enabled: isEditing,
                        keyboardType: TextInputType.name,
                        controller: fullNameController,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrELight),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: buttonClr),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrLight),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'E-mail',
                        style: fontStyle(16, textClrDark, FontWeight.w600),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty &&
                              !value.contains('@') &&
                              !value.contains('.com')) {
                            return 'Invalid E-mail Address';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        style: fontStyle(15, Colors.black54, FontWeight.w500),
                        enabled: isEditing,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrELight),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: buttonClr),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrLight),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Phone Number',
                        style: fontStyle(16, textClrDark, FontWeight.w600),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '*required';
                          }
                          if (value.length < 11 && value.length > 11) {
                            return 'Invalid Phone Number';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        controller: phoneController,
                        style: fontStyle(15, Colors.black54, FontWeight.w500),
                        enabled: isEditing,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrELight),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: buttonClr),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrLight),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'NID Number',
                        style: fontStyle(16, textClrDark, FontWeight.w600),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '*required';
                          }
                          if (value.length < 13 && value.length > 17) {
                            return 'Invalid NID Number';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.number,
                        controller: nidController,
                        style: fontStyle(15, Colors.black54, FontWeight.w500),
                        enabled: isEditing,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrELight),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: buttonClr),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrLight),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Present Address',
                        style: fontStyle(16, textClrDark, FontWeight.w600),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '*required';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.streetAddress,
                        controller: locationController,
                        style: fontStyle(15, Colors.black54, FontWeight.w500),
                        enabled: isEditing,
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrELight),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: buttonClr),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textClrLight),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: buttonClr,
                        height: 55,
                        minWidth: double.infinity,
                        onPressed: () {
                          setState(() {
                            isEditing = !isEditing;
                          });
                        },
                        child: Text(
                          isEditing ? 'Save' : 'Edit Profile',
                          style: fontStyle(16, textClrELight, FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
