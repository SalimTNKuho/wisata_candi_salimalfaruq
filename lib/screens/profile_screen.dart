import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wisata_candi_salimalfaruq/providers/favorite_provider.dart';
import 'package:wisata_candi_salimalfaruq/providers/auth_provider.dart';
import 'package:wisata_candi_salimalfaruq/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() =>
      _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  // int favoriteCandiCount = 0;

  // TODO: 5. Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // TODO: 6. Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteCount =
        context.watch<FavoriteProvider>().count;
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Column(
            children: [
              // TODO: 2. Buat ProfileHeader (foto profil)
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 200 - 50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple, width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                          AssetImage('images/placeholder_image.png'),
                        ),
                      ),
                      if (isSignedIn)
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt,
                              color: Colors.deepPurple[50]),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.deepPurple[100],),
              SizedBox(height: 4,),
              // TODO: 3. Buat ProfileInfo (info pengguna)
              // Username
              ProfileInfoItem(
                icon: Icons.lock,
                label: 'Pengguna',
                value: userName,
                iconColor: Colors.amber,
              ),
              // Row(children: [
              //   SizedBox(
              //     width: MediaQuery.of(context).size.width / 3,
              //     child: const Row(children: [
              //       Icon(Icons.lock, color: Colors.amber),
              //       SizedBox(width: 8),
              //       Text('Pengguna', style: TextStyle(
              //           fontSize: 18, fontWeight: FontWeight.bold)),
              //     ]),
              //   ),
              //   Expanded(
              //     child: Text(': $userName',
              //         style: const TextStyle(fontSize: 18)),
              //   ),
              // ]),
              SizedBox(height: 4,),
              // Fullname
              ProfileInfoItem(
                icon: Icons.person,
                label: 'Nama',
                value: fullName,
                showEditIcon: isSignedIn,
                onEditPressed: () => debugPrint('Icon edit ditekan'),
                iconColor: Colors.blue,
              ),
              // Row(children: [
              //   SizedBox(
              //     width: MediaQuery.of(context).size.width / 3,
              //     child: const Row(children: [
              //       Icon(Icons.person, color: Colors.blue),
              //       SizedBox(width: 8),
              //       Text('Nama', style: TextStyle(
              //           fontSize: 18, fontWeight: FontWeight.bold)),
              //     ]),
              //   ),
              //   Expanded(
              //     child: Text(': $fullName',
              //         style: const TextStyle(fontSize: 18)),
              //   ),
              // ]),
              SizedBox(height: 4,), // permisah
              // FavoriteCandiCount
              ProfileInfoItem(
                icon: Icons.favorite,
                label: 'Favorit',
                value: favoriteCount > 0 ? '$favoriteCount' : '',
                iconColor: Colors.red,
              ),
              // Row(children: [
              //   SizedBox(
              //     width: MediaQuery.of(context).size.width / 3,
              //     child: const Row(children: [
              //       Icon(Icons.favorite, color: Colors.red),
              //       SizedBox(width: 8),
              //       Text('Favorit', style: TextStyle(
              //           fontSize: 18, fontWeight: FontWeight.bold)),
              //     ]),
              //   ),
              //   Expanded(
              //     child: Text(': $favoriteCandiCount',
              //         style: const TextStyle(fontSize: 18)),
              //   ),
              // ]),
              SizedBox(height: 4,),
              // TODO: 4. Buat ProfileActions (tombol sign in/out)
              const SizedBox(height: 4),
              Divider(color: Colors.deepPurple[100]),
              const SizedBox(height: 20),
              auth.isSignedIn
                  ? TextButton(onPressed: () =>
                  context.read<AuthProvider>().signOut(),
                  child: const Text('Sign Out'))
                  : TextButton(onPressed: signIn, child: const Text('Sign In')),
            ],
          ),
        ],
      ),
    );
  }
}
