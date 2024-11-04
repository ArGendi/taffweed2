import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tafweed/constants.dart';
import 'package:tafweed/cubits/language/language_cubit.dart';
import 'package:tafweed/cubits/prices/price_cubit.dart';

class PackageCard extends StatefulWidget {
  final String text;
  final double price;
  final String image;
  final Function() onTap;
  const PackageCard({super.key, required this.text, required this.image, required this.onTap, required this.price});

  @override
  State<PackageCard> createState() => _PackageCardState();
}

class _PackageCardState extends State<PackageCard> {
  String workingImage = "assets/images/kaaba2.jpg";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    workingImage = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    var lang = BlocProvider.of<LanguageCubit>(context).lang;
    var priceCubit = BlocProvider.of<PriceCubit>(context);
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: widget.onTap,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          //color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            //opacity: 0.15,
            fit: BoxFit.cover,
            image: NetworkImage(widget.image),
            onError: (o, s){
              workingImage = "assets/images/kaaba2.jpg";
              setState(() {});
            }
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //width: 100,
              //height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: lang == "en" ? Radius.circular(12) : Radius.zero,
                  topLeft: lang == "en" ? Radius.zero : Radius.circular(12),
                  bottomRight: lang == "en" ? Radius.zero : Radius.circular(12),
                  topRight: lang == "en" ? Radius.circular(12) : Radius.zero,
                ),
                gradient: LinearGradient(
                colors: [
                  mainColor,
                  const Color(0xFF68c3cb),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "${((widget.price * priceCubit.currency.rate).ceilToDouble()).toStringAsFixed(1)} ${priceCubit.currency.sign} ",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}