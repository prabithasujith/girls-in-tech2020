import 'dart:io';
import 'package:breastCancerAwareness/utilities/Strings.dart';
import 'package:flutter/material.dart';




class OriginalDocumentWidget extends StatelessWidget {
  final File _pickedImage;
  OriginalDocumentWidget(this._pickedImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            kOriginalDocument,
            style: Theme.of(context).textTheme.title,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: FileImage(_pickedImage), fit: BoxFit.fill)),
            ),
          ),
        ],
      ),
    );
  }
}
