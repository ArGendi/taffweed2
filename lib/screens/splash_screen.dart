import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafweed/constants.dart';
import 'package:tafweed/cubits/notifications/notifications_cubit.dart';
import 'package:tafweed/local/cache.dart';
import 'package:tafweed/models/notifications_list.dart';
import 'package:tafweed/screens/intro_screen.dart';
import 'package:tafweed/services/local_notification.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Notifications
    // List<String> notifications = [];
    // String? notification;
    // if(Cache.getToken() != null){
    //   notifications = Cache.getNotifications() ?? [];
    //   notification = NotificationsList.getRandomNotification(context);
    //   notifications.add(notification);
    //   Cache.setNotifications(notifications);
    // }

    // Navigation to next screen
    Timer(const Duration(milliseconds: 1200), (){
      // BlocProvider.of<NotificationsCubit>(context).notifications = notifications;
      // Cache.setNotifications(notifications);
      // notification != null? LocalNotificationServices.showPeriodNotification(0, "Taffweed", notification) : null;

      if(Cache.getToken() != null){
        Navigator.pushReplacementNamed(context, homePath);
      }
      else{
        Navigator.pushReplacementNamed(context, introPath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.05,
            image: AssetImage(
              'assets/images/kaaba.jpeg',
            ),
          )
        ),
        child: Center(
          child: Image.asset(
            'assets/images/rLogo.png',
            width: 180,
          ),
        ),
      ),
    );
  }
}