import 'package:flutter/material.dart';
import './components/profile_menu.dart';
import './components/profile_pic.dart';
import '../../config/config.dart';
import '../../widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              icon: 'assets/icons/User Icon.svg',
              text: 'Mon compte',
              press: () {},
            ),
            ProfileMenu(
              icon: 'assets/icons/Bell.svg',
              text: 'Notifications',
              press: () {},
            ),
            ProfileMenu(
              icon: 'assets/icons/Settings.svg',
              text: 'Paramètres',
              press: () {},
            ),
            ProfileMenu(
              icon: 'assets/icons/Question mark.svg',
              text: 'Aide',
              press: () {},
            ),
            ProfileMenu(
              icon: 'assets/icons/Log out.svg',
              text: 'Déconnexion',
              press: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
