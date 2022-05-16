import 'package:circle_flags/circle_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final BuildContext contextt;
  const HomePage({Key? key, required this.contextt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi".tr()),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              for (var i = 0; i < 2; i++)
              PopupMenuItem(
                child: Row(
                  children: [
                    CircleFlag(i == 0 ?'uz':'us', size: 40),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                    Text(i == 0 ?"Uzbek" : "English",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.07),),
                  ],
                ),
                onTap: (){
                  contextt.setLocale(i == 0?Locale('uz'):Locale('en'));
                },
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
