// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:video/contants.dart';
import 'package:video/login.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatelessWidget {
  const MyCall({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConst
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: MyConst
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: MyLogin.userId,
      userName: MyLogin.name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) {
          if (MiniOverlayPageState.idle != ZegoMiniOverlayMachine().state()) {
            ZegoMiniOverlayMachine().changeState(MiniOverlayPageState.idle);
          } else {
            Navigator.of(context).pop();
          }
        },
    );
  }
}
