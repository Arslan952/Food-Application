import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seller_app/authontication/login.dart';
import 'package:seller_app/authontication/register.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 2, vsync:this );
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Center(
            child: Text('A.A Seller Store',style: GoogleFonts.knewave(
              color: const Color(0xffff4500),
              fontSize: 25
            ),),
          ),
         const  SizedBox(height: 10,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12)
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffff4500)
                ),
                isScrollable: true,
                controller: tabController,
                labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                tabs: const [
                  Tab(icon: Icon(Icons.lock,color: Colors.white,),
                    text: 'Login',
                    ),
                  Tab(icon: Icon(Icons.person,color: Colors.white,),
                    text: 'Register',
                  )
                ],
              ),
            ),
          ),
          const TabBarView(children:[
            LoginScreen(),
            RegisterScreen()
          ]
          )
        ],
      ),
    );

  }
}
