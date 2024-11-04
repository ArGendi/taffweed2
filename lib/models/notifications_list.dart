import 'dart:math';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

abstract class NotificationsList{
  static String getRandomNotification(BuildContext context){
    List<String> items = [
      AppLocalizations.of(context)!.request_umrah_for_loved_ones,
      AppLocalizations.of(context)!.in_tafweeed_we_perform_umrah_for_the_sick_disabled_deceased,
      AppLocalizations.of(context)!.prophet_said_follow_up_hajj_and_umrah_remove_poverty_sins,
      AppLocalizations.of(context)!.tafweeed_app_is_source_of_good_request_umrah_now,
      AppLocalizations.of(context)!.guide_to_good_is_like_the_doer_of_good_in_tafweeed,
      AppLocalizations.of(context)!.you_can_complete_umrah_for_disabled_person,
    ];
    Random rand = Random();
    int index = rand.nextInt(items.length);
    return items[index];
  }
}