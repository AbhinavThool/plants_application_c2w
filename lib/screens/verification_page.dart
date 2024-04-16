import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_application_c2w/screens/home_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController verificationController1 = TextEditingController();
  TextEditingController verificationController2 = TextEditingController();
  TextEditingController verificationController3 = TextEditingController();
  TextEditingController verificationController4 = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    verificationController1.dispose();
    verificationController2.dispose();
    verificationController3.dispose();
    verificationController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(251, 247, 248, 1),
          image: DecorationImage(
            image: AssetImage('assets/images/verification_illustration.png'),
            alignment: Alignment.topRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //spacing
              SizedBox(
                height: 90,
              ),

              //Back Arrow
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                  Spacer()
                ],
              ),

              //spacing
              SizedBox(
                height: 30,
              ),

              //Heading

              // Container(
              //   width: double.infinity,
              //   padding: EdgeInsets.only(left: 10),
              //   child:
              Row(
                children: [
                  Text(
                    "Verification",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Spacer()
                ],
              ),
              // )

              //spacing
              SizedBox(
                height: 10,
              ),

              //body text
              Row(
                children: [
                  SizedBox(
                    width: 320,
                    child: Text(
                      "Enter the OTP code from the phone we just sent you.",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ),
                  Spacer()
                ],
              ),

              // spacing
              SizedBox(height: 35),

              // verification text boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a number';
                        }
                        return null;
                      },
                      maxLength: 1,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 24,
                      controller: verificationController1,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a number';
                        }
                        return null;
                      },
                      maxLength: 1,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 24,
                      controller: verificationController2,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a number';
                        }
                        return null;
                      },
                      maxLength: 1,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 24,
                      controller: verificationController3,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a number';
                        }
                        return null;
                      },
                      maxLength: 1,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      cursorHeight: 24,
                      controller: verificationController4,
                    ),
                  ),
                ],
              ),

              //spacing
              SizedBox(height: 35),

              // text
              Row(
                children: [
                  Text(
                    "Don’t receive OTP code!",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),

              //spacing
              SizedBox(height: 10),

              // submit button
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(62, 102, 24, 1),
                        Color.fromRGBO(124, 180, 70, 1),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // padding: const EdgeInsets.symmetric(horizontal: 20),
                  // width: 320,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Submit",
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
