import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class mypayment extends StatelessWidget {
  const mypayment({super.key});

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
              title: Text('Pay Securly'))
        ];
      },
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly Fees",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹500/1 Month",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Valid Until 12 Jan, 2023",
                    style: TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "₹1000",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "UPI",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 165, 164, 164),
                              width: 2),
                          color: Color.fromARGB(255, 199, 203, 201),
                          borderRadius:
                              BorderRadius.circular(50.0)), //<-- SEE HERE
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100.0),
                        onTap: () {},
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ImageIcon(
                              AssetImage("assets/pngwing.com.png"),
                              size: 24,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
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
                          "Pay Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18.0),
                        ),
                      ],
                    )),
              )
            ]),
          )),
    ));
  }
}
