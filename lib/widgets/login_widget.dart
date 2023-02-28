import 'package:fl_country_code_picker/src/models/country_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_taxi/utils/app_constants.dart';
import 'package:green_taxi/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChange) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: AppConstants.helloNiceToMeetYou),
        textWidget(
            text: AppConstants.getMovingWithGreenTaxi,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 3,
                  blurRadius: 3)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => onCountryChange(),
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        //start on third video
                        Expanded(
                          child: Container(
                            child: countryCode.flagImage,
                          ),
                        ),
                        textWidget(text: countryCode.dialCode),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                children: [
                  TextSpan(
                    text: AppConstants.byCreating + " ",
                  ),
                  TextSpan(
                      text: AppConstants.termsOfService + " ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: "and ",
                  ),
                  TextSpan(
                      text: AppConstants.privacyPolicy + " ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                ]),
          ),
        ),
      ],
    )),
  );
}
