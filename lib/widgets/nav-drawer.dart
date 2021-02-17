import 'package:flutter/material.dart';
import 'package:flutter_authentication_with_laravel_sanctum/providers/auth.dart';
import 'package:flutter_authentication_with_laravel_sanctum/screen/login-screen.dart';
import 'package:flutter_authentication_with_laravel_sanctum/screen/posts-screen.dart';
import 'package:provider/provider.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<Auth>(
        builder: (context, auth, child){

          if (auth.authenticated){
            return ListView(
        children:  [
          ListTile(
            title: Text('Alex Garrett-Smith')
          ),
          ListTile(
            title: Text('Posts'),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
            PostsScreen()));

            },
          ),
           ListTile(
                  title: Text('Logout'),
                  onTap: (){

                    Provider.of<Auth>(context, listen: false).logout();
                  },
                )

        ],
      );
          } else {
            return ListView(
              children: [
                ListTile(
                  title: Text('Login'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    LoginScreen()));
                  },
                ),
                 ListTile(
                  title: Text('Register'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    LoginScreen()));
                  },
                )
              ],

            );
          }
            },
          ),
        
     );
          }
          
        }
   