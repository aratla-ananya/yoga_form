import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yoga_app/widgets/my_radio_button.dart';
import 'payment.dart';

class AdmissionForm extends StatefulWidget {
  const AdmissionForm({super.key});

  @override
  State<AdmissionForm> createState() => _AdmissionFormState();
}

class _AdmissionFormState extends State<AdmissionForm> {
  Gender? _gender;
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  bool? check4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.0,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            automaticallyImplyLeading: false,
            expandedHeight: 50,
            floating: true,
            snap: true,
          )
        ];
      },
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 1200,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Yoga Class \nAdmission Form",
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    makeinput(label: "First Name"),
                    makeinput(label: "Last Name"),
                    makeinput(label: "Email"),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    makeRadioinput(label: "Gender"),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        myRadio(
                            title: Gender.Male.name,
                            value: Gender.Male,
                            gender: _gender,
                            onChanged: (val) {
                              _gender = val;
                            }),
                        SizedBox(
                          width: 5.0,
                        ),
                        myRadio(
                            title: Gender.Female.name,
                            value: Gender.Female,
                            gender: _gender,
                            onChanged: (val) {
                              _gender = val;
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    makeinput(label: "Age"),
                    SizedBox(
                      height: 10.0,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      //checkbox positioned at right
                      value: check1,
                      onChanged: (bool? value) {
                        setState(() {
                          check1 = value;
                        });
                      },
                      title: Text("Morning Session - 6:00 AM to 7:00 AM"),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      //checkbox positioned at right
                      value: check2,
                      onChanged: (bool? value) {
                        setState(() {
                          check2 = value;
                        });
                      },
                      title: Text("Morning Session - 7:00 AM to 8:00 AM "),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      //checkbox positioned at right
                      value: check3,
                      onChanged: (bool? value) {
                        setState(() {
                          check3 = value;
                        });
                      },
                      title: Text("Morning Session - 8:00 AM to 9:00 AM "),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      //checkbox positioned at right
                      value: check4,
                      onChanged: (bool? value) {
                        setState(() {
                          check4 = value;
                        });
                      },
                      title: Text("Morning Session - 5:00 PM to 6:00 PM "),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Note",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "participants can shift from one batch to another in different months but in same month they need to be in same batch",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const mypayment()),
                            );
                          }),
                          height: 65.0,
                          color: Colors.amber,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Enroll",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  makeinput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true, //<-- SEE HERE
            fillColor: Color(0xFFD9D9D9),

            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  makeRadioinput({label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
      ],
    );
  }
}
