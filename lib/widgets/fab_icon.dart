import 'package:flutter/material.dart';
import 'package:podcast_app/constants.dart';

class FabIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  FabIcon({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 50.0,
          height: 90.0,
          child: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Center(
                    child: Icon(
                      icon,
                      size: 25.0,
                      color: kPink,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                title,
                style: kFabStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
