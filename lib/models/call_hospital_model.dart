import 'package:flutter/material.dart';

class CallHospitalModel {
  String? name, address;
  IconData? icon;
  int? call;

  CallHospitalModel({this.name, this.address, this.icon, this.call});
}

List<CallHospitalModel> allHospitalList = [
  CallHospitalModel(
    name: "Appolo Hospital",
    address: "20/5, Babar Road, (Ground Floor), Block # B, Mohammadpur",
    icon: Icons.call,
    call: 8152549,
  ),
  CallHospitalModel(
    name: 'Aichi Hospital',
    address: 'House # 13, Eshakha Avenue Sector # 6, utttara Dhaka',
    icon: Icons.call,
    call: 8916290,
  ),
  CallHospitalModel(
    name: 'Al Anaiet Adhunik Hospital',
    address: 'House # 36, Road # 3, Dhanmondi',
    icon: Icons.call,
    call: 8631619,
  ),
  CallHospitalModel(
    name: 'Ahmed Medical Centre Ltd',
    address: 'House # 71, Road # 15-A, (New), Dhanmondi C/A',
    icon: Icons.call,
    call: 8113628,
  ),
  CallHospitalModel(
    name: 'Al-Madina General Hospital (Pvt.) Ltd',
    address: '2/A, Golden Street, Ring Road, Shamoli, Dhaka',
    icon: Icons.call,
    call: 8118709,
  ),
  CallHospitalModel(
    name: 'Arogya Niketan Hospital Ltd',
    address: '242-243, New Circular Road, Malibagh',
    icon: Icons.call,
    call: 9333730,
  ),
  CallHospitalModel(
    name: 'Al- Rajhi Hospital',
    address: '12, Farmgate-1215, Dhaka',
    icon: Icons.call,
    call: 8119229,
  ),
  CallHospitalModel(
    name: 'Al Jebel-E-Nur Heart Ltd',
    address: 'House # 21, Road # 9/A (New),Dhanmondi',
    icon: Icons.call,
    call: 8117031,
  ),
  CallHospitalModel(
    name: 'Al-Biruni Hospital',
    address: '23/1, Khilzee Road, Shyamoli',
    icon: Icons.call,
    call: 8118905,
  ),
  CallHospitalModel(
    name: 'Al-Markazul Islami Hospital',
    address: '21/17, Babar Road, Mohammadpur',
    icon: Icons.call,
    call: 8114980,
  ),
  CallHospitalModel(
    name: 'Al-Mohite General Hospital & Diagnostic Centre',
    address: 'House # 11, Road # 2, Shyamoli',
    icon: Icons.call,
    call: 9113831,
  ),
  CallHospitalModel(
    name: 'Aysha Memorial Specialized Hospital',
    address: '74/G, Arjatpara, Mohakhali, Dhaka',
    icon: Icons.call,
    call: 9122689,
  ),
  CallHospitalModel(
    name: 'Al- Helal Speacialist Hospital',
    address: '150,Rokeya Sarani Senpara ParbataMirpur-10, Dhaka',
    icon: Icons.call,
    call: 9006820,
  ),
  CallHospitalModel(
    name: 'Ad-Din Hospital',
    address: 'Moghbazar, Dhaka',
    icon: Icons.call,
    call: 9353391,
  ),
  CallHospitalModel(
    name: 'Al-Ahsraf General Hospital',
    address: 'House # 12 Road # 21,Sector # 4,Uttara Dhaka',
    icon: Icons.call,
    call: 8952851,
  ),
  CallHospitalModel(
    name: 'Al-Fateh Medical Sevices (Pvt) Ltd',
    address: '11, Farmgate over Bridge East Side',
    icon: Icons.call,
    call: 9120615,
  ),
  CallHospitalModel(
    name: 'Al-Manar Hospital',
    address: '5/4, Block-F, Lalmatia Dhaka - 1207',
    icon: Icons.call,
    call: 9121387,
  ),
  CallHospitalModel(
    name: 'Brain & Maind Hospital Ltd',
    address: '149/A, Airport Road, Farmgate, Baityl Shoraf Mosque Complex',
    icon: Icons.call,
    call: 8120710,
  ),
  CallHospitalModel(
    name: 'Bengal Nursing Home (Pvt.) Ltd',
    address: ' 70/C, Clke Circus kalabagan',
    icon: Icons.call,
    call: 8116007,
  ),
  CallHospitalModel(
    name: 'Bangkok Hospital',
    address:
        'Office, Bangladesh Lion Complex (4th Floor), 73, New Airport Road, Tejgaon',
    icon: Icons.call,
    call: 9139777,
  ),
  CallHospitalModel(
    name: 'B.D.F. Hospital',
    address: '5/7, Humayaun Road, Block # D, Mohammadpur',
    icon: Icons.call,
    call: 8123730,
  ),
  CallHospitalModel(
    name: 'Bnsb Dhaka',
    address: 'Eye Hospital Mirpur-1, Dhaka',
    icon: Icons.call,
    call: 8014476,
  ),
  CallHospitalModel(
    name: 'Brighton Hospital Ltd',
    address: '163, Sonargaon Road Hatirpool, Dhaka - 1205',
    icon: Icons.call,
    call: 9671186,
  ),
  CallHospitalModel(
    name: 'Bangabandhu Shiekh Mujib Medical University',
    address: 'Shabagh, Dhaka',
    icon: Icons.call,
    call: 8614545,
  ),
  CallHospitalModel(
    name: 'BIRDEM General Hospital',
    address: 'Shahbagh, Dhaka',
    icon: Icons.call,
    call: 8616641,
  ),
  CallHospitalModel(
    name: 'Bdm Hospital',
    address: '5/17, Humaund Road, Block # B, Mohammadpur',
    icon: Icons.call,
    call: 8113481,
  ),
  CallHospitalModel(
    name: 'Bangladesh Telemedicine Services Ltd',
    address: 'Comfort Tower, 167/B, Green Road, Dhanmondi',
    icon: Icons.call,
    call: 8124990,
  ),
  CallHospitalModel(
    name: 'Bangal Nursing Home Ltd',
    address: 'Lake Circus, Kalabagan, Dhaka',
    icon: Icons.call,
    call: 9114824,
  ),
  CallHospitalModel(
    name: 'Bumrungrad Hospital',
    address: 'House- 154, Road- 11, Block- E, Banani, Dhaka',
    icon: Icons.call,
    call: 8855254,
  ),
  CallHospitalModel(
    name: 'Bari-Llizarov Orthopedic',
    address:
        'Centre House # 77 (New) 831 (Old), Road # 9/A (New) 19 (Old), Dhanmondi R/A',
    icon: Icons.call,
    call: 8117876,
  ),
  CallHospitalModel(
    name: 'Bangladesh Medical College',
    address: 'House # 35, Road # 14/A, Dhanmondi',
    icon: Icons.call,
    call: 8115843,
  ),
  CallHospitalModel(
    name: 'Bangladesh Heart & Chest Hospital',
    address: 'Road # 27 (Old), 16 (New), House # 47, Dhanmondi',
    icon: Icons.call,
    call: 8123977,
  ),
  CallHospitalModel(
    name:
        'Bangladesh Association For The Aged & Institute Of Gerecitric Medicine',
    address: 'Agargaon, Sher-e-Bangla Nagar',
    icon: Icons.call,
    call: 9129814,
  ),
  CallHospitalModel(
    name: 'CMH (Dhaka Cantonment)',
    address: 'Dhaka',
    icon: Icons.call,
    call: 882770,
  ),
  CallHospitalModel(
    name: 'Chandshi Medical Centre',
    address: 'House # 9, Road # 27, Block # K, Banani',
    icon: Icons.call,
    call: 9554571,
  ),
  CallHospitalModel(
    name: 'Centre For The Rehabilitation Of The Paralysed (Crp)',
    address: 'Post CRP Chapin, Savar',
    icon: Icons.call,
    call: 7711766,
  ),
  CallHospitalModel(
    name: 'Community Hospital',
    address: '190/1, Wireless Rail Gate, Baramaghbazar, Dhaka',
    icon: Icons.call,
    call: 9351190,
  ),
  CallHospitalModel(
    name: 'China-Bangla Hospital (Jv) Ltd',
    address: 'Plot # 1, Road # 7, Sector # 1, Uttara',
    icon: Icons.call,
    call: 8913606,
  ),
  CallHospitalModel(
    name: 'Christian Medical Hospital',
    address: '6/3, Badda, Baridhara (North)',
    icon: Icons.call,
    call: 8813375,
  ),
  CallHospitalModel(
    name: 'Cholera Hospital (Icddrb)',
    address: 'Dhaka, Mohkhali',
    icon: Icons.call,
    call: 871751,
  ),
  CallHospitalModel(
    name: 'Central Hospital Ltd',
    address: 'House # 2, Road # 5, Green Road, Dhanmondi',
    icon: Icons.call,
    call: 9660015,
  ),
  CallHospitalModel(
    name: 'Crescent Hospital & Diagnostic Complex Ltd',
    address: '22/2, Babor Road, Mohammadpur',
    icon: Icons.call,
    call: 8119775,
  ),
  CallHospitalModel(
    name: 'Centre For Health And Development Medical Complex',
    address:
        '(Chd Medical Comple) House # 16, Road # 16, Sector # 4, Uttara Model Town',
    icon: Icons.call,
    call: 8920670,
  ),
  CallHospitalModel(
    name: 'City Hospital (Pvt) Ltd',
    address: '69/1/1, Panthapath',
    icon: Icons.call,
    call: 8623205,
  ),
  CallHospitalModel(
    name: 'Care Madical Center Ltd',
    address: '41, Chamelibagh, Shantinagar',
    icon: Icons.call,
    call: 9351190,
  ),
  CallHospitalModel(
    name: 'Crescent Hospital & Dignostic',
    address: '22/2, Babar Road, Mohammadpur, Dhaka',
    icon: Icons.call,
    call: 8119775,
  ),
  CallHospitalModel(
    name: 'Cancer Home Cancer & Breast Clinic',
    address: 'GP-Cha, 149/1, Mohakhali',
    icon: Icons.call,
    call: 8815244,
  ),
  CallHospitalModel(
    name: 'Community Maternity Hospital',
    address: '22, Bijay Nagar',
    icon: Icons.call,
    call: 9358513,
  ),
  CallHospitalModel(
    name: 'Crescent Gastroliver & General Hospital Ltd',
    address: 'House- 60, Road- 8/A, Dhanmondi R/A, Dhaka',
    icon: Icons.call,
    call: 9116851,
  ),
  CallHospitalModel(
    name: 'Control Of Diarrhoeal Disease Programme',
    address: '1/13, Humayun Road, Block # B, Mohammadpur',
    icon: Icons.call,
    call: 9114581,
  ),
];
