

import 'package:chatgpt/widgets/drop_down.dart';
import 'package:chatgpt/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Services {
  static Future<void> showModelSheet({required BuildContext context}) async{

    await  showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical( 
                  top: Radius.circular(20)
                )
              ),
              backgroundColor: scaffoldBackgroundColor,
                context: context, 
                builder: (context){
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TextWidget(label: "Chosen Model", 
                          fontSize: 16,
                          ),
                        ), 

                        Flexible(
                          flex: 2,
                          // child: ModelDropDownWidget(), 
                          child: ModelsDrowDownWidget(),
                          )
                        
                      ],
                    ),
                  );
                });

  }
}

//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