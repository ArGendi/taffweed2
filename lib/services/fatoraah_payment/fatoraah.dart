import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_fatoorah/my_fatoorah.dart';
import 'package:myfatoorah_flutter/myfatoorah_flutter.dart';
import 'package:tafweed/services/fatoraah_payment/fatoraah_keys.dart';

abstract class Fatoraah{
  static late String token;

// "R-ubZI4OB_d8cq6cU9BL4l8ifUZtHvN6UmkFQZEe-aR4CCACB2ipZtV9ED5JiQPy3Ijgvp_5emlmIS7hR4SsdXV8duQpsRyPtER2XIDKLGh_9IAwsMk--tVnTTh-7uwaV2gzHJVP5i4bH_2AgLuMTTAHz5K0Eg5U8_JwBFfoTltxdQcAkPT8VZCV7cWofuBRD0m1vrjLS4gm3Sz72ddmHh88PaYchMEJy8xzlCMNm-Pwd-K_0FK-talxKnZQt133ZPJoNbtg384tv6bJ41-3O52nRcpTOQLc8A9s4HqrDfgvt9J2qL5IgV9olkmnWNpqxiwq6UV3m9V7L6nzIbOnyRCKYTZYF7V9yMNe0xHpkwp87Omo7sTocSsrwBXhsknEppLwx3O3cELyXhCn9MRV35ggmqFFn4ncgbkyTe5RphNhgV22EhPjyvHYi9OYXmzASoFTAN7Xg2jFJGESVXVB1bh_PDQmx5LJrhfbRGFp-_Iger9XhXLW3XMO1YHGqhSWhXULoLi8I5uauKu55nQmfEtsygRZ08T2hSkuD0fK6GIJfWvQLgo3lpMWnj7yHvMIaxTX0-J0-5vPovT7Pucbcw2DocKS63z1grlrIqh7AVg-znynNWduHsVA1HGzjqisYQCUb9Yj66phKgIBHFfOyYFcsdJhXiJJRmvhHmDWRfNGRPbUL82JQbdIBGCsVYPWHrBZYwoP2FUFnkxoBWlf8mf3ecY_x1j32nb7_C17Vo_8xdWX"
  
  static Future<String?> pay(BuildContext context, double amount, {Country currency = Country.Egypt, ApiLanguage language = ApiLanguage.English, String? customerName, String? customerMobile}) async{
    try{
      var response = await MyFatoorah.startPayment(
        context: context,
        request: MyfatoorahRequest.live(
            currencyIso: currency,
            successUrl: "https://cdn3d.iconscout.com/3d/premium/thumb/successfully-done-5108472-4288033.png?f=webp",
            errorUrl: "https://media.istockphoto.com/id/1165493777/vector/failed-payment-declined-transaction-invalid-purchase-broken-credit-card-with-cross-cancel.jpg?s=612x612&w=0&k=20&c=WFJDtecAvQe770z9g4K0tQ8FZYcpfVerWNon4pjX6lE=",
            invoiceAmount: amount,
            language: language,
            token: token,
            customerName: customerName,
            customerMobile: customerMobile,
            url: "https://api.myfatoorah.com/"
        ),
      );
      log(response.url.toString());
      log(response.paymentId.toString());
      return response.paymentId;
    }
    catch(e){
      log(e.toString());
      return null;
    }
  }

  static Future<int?> payWithCard(double amount) async{
    await init();
    await initiatePayment(amount);
    return await executePayment(amount, 6);
  }

  static Future<int?> payWithGoogle(double amount) async{
    await init();
    await initiatePayment(amount);
    return await executePayment(amount, 16);
  }

  static Future<int?> payWithApple(double amount) async{
    await init();
    await initiatePayment(amount);
    return await executePayment(amount, 9);
  }

  static Future<void> init() async{
    await MFSDK.init(FatoraahKeys.apiKey, MFCountry.UAE, MFEnvironment.LIVE);
  }

  static Future<void> initiatePayment(double amount) async {
    MFInitiatePaymentRequest request = MFInitiatePaymentRequest(
        invoiceAmount: amount, currencyIso: MFCurrencyISO.UAE_AED);
    await MFSDK
        .initiatePayment(request, MFLanguage.ENGLISH)
        .then((value){
      debugPrint("tmam: ${value.toString()}");
      for(MFPaymentMethod one in value.paymentMethods ?? []){
        log("${one.paymentMethodId} ${one.paymentMethodEn}");
      }
    })
        .catchError((error) {debugPrint("error: ${error.message}");});
  }

  static Future<int?> executePayment(double amount, int methodId) async {
    MFExecutePaymentRequest request = MFExecutePaymentRequest(invoiceValue: amount, );
    request.paymentMethodId = methodId;
    var response = await MFSDK
        .executePayment(request, MFLanguage.ENGLISH, (invoiceId) {
      debugPrint("invoiceId ::::: $invoiceId");
    });
    log("invoce status: ${response.invoiceStatus}");
    return response.invoiceId;
  }

// void lol() async{
//   MFSDK.init(_token, MFCountry.SAUDIARABIA, MFEnvironment.TEST);
//   MFSDK.setUpActionBar(
//       toolBarTitle: 'Taffweed',
//       toolBarTitleColor: '#FFEB3B',
//       toolBarBackgroundColor: '#CA0404',
//       isShowToolBar: true
//   );
//   MFInitiatePaymentRequest request = MFInitiatePaymentRequest(
//       invoiceAmount: 10, currencyIso: MFCurrencyISO.SAUDIARABIA_SAR);
//   await MFSDK
//       .initiatePayment(request, MFLanguage.ENGLISH)
//       .then((value) => debugPrint(value.toString()))
//       .catchError((error) => {debugPrint(error.message)});

//   MFExecutePaymentRequest r = MFExecutePaymentRequest(invoiceValue: 10);
//   r.paymentMethodId = 1;

//   await MFSDK
//       .executePayment(r, MFLanguage.ENGLISH, (invoiceId) {
//         debugPrint(invoiceId);
//       })
//       .then((value) => debugPrint(value.toString()))
//       .catchError((error) => {debugPrint(error.message)});
// }
}