import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localization"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(child: Center(
              child: Text("welcome", style: TextStyle(fontSize: 20),).tr(),
            )),

            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF4CAf50)),
                      ),
                      onPressed: (){
                        context.setLocale(Locale('en', 'US')) ;
                      },
                      child: Text("English", style: TextStyle(color: Colors.white),),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                      ),
                      onPressed: (){
                        context.setLocale(Locale('ru', 'RU')) ;
                      },
                      child: Text("Russian", style: TextStyle(color: Colors.white),),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: (){
                        context.setLocale(Locale('uz', 'UZ')) ;
                      },
                      child: Text("Uzbek", style: TextStyle(color: Colors.white),),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ),
                      onPressed: (){
                        context.setLocale(Locale('fr', 'FR')) ;
                      },
                      child: Text("French", style: TextStyle(color: Colors.white),),
                    )
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
