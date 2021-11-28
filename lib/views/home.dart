import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/header_drawer.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 5,
      ),
      //بلشنا بعمود
      body: Column(
        children: [
          // عشان نبعد الصورة عن راس الصفحةpadding حطينا
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              //ال كونتينر الرئيسي
              decoration: const BoxDecoration(
                  //لجعل الصورة بشكل دائري
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(20))),
              //لقص الصورة
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                // ال ستاك لوضع الكلام عالصورة
                // الالايمنت لوضع النص في اسفل الصورة
                alignment: Alignment.bottomCenter,
                children: [
                  const Image(
                    image: AssetImage('assets/image/car.jpg'),
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    // كونتينر يتعلق فقط بالنص
                    color: Colors.black,
                    width: 300,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30, color: Colors.green.withOpacity(0.6)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: const HeadD(),
    );
  }
}
