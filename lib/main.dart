import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext cogitntext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Sayyid abdul wasye (1124160161)',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 25, 5, 59)),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Sayid'),
        actions: [  
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
        
   body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 50),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Sayyid abdul wasye',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                'NIM: 1124160161',
                style: textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'Program Studi: Software Engineering',
                style: textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          'Informasi Kontak',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(),
                      const InfoTile(
                        icon: Icons.email_outlined,
                        label: 'Email',
                        value: 'Sayyidwasye@gmail.com',
                      ),
                      const InfoTile(
                        icon: Icons.phone_outlined,
                        label: 'Nomor HP',
                        value: '+62 881 9972581',
                      ),
                      const InfoTile(
                        icon: Icons.class_outlined,
                        label: 'Kelas',
                        value: 'TI 24 SH SE',
                      ),
                      const InfoTile(
                        icon: Icons.code,
                        label: 'Akun GitHub',
                        value: 'github.com/sayyidabdul.com',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Card Keahlian / Hobi (Minimal 3 InfoTile)
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          'Keahlian & Hobi',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(),
                      const InfoTile(
                        icon: Icons.computer,
                        label: 'Pemrograman',
                        value: 'Python, Dart, Flutter',
                      ),
                      const InfoTile(
                        icon: Icons.data_array,
                        label: 'Data Science',
                        value: 'Pandas, NumPy, EDA',
                      ),
                      const InfoTile(
                        icon: Icons.sports_esports_outlined,
                        label: 'Hobi',
                        value: 'Reverse Engineering & Gaming',
                      ),
                    ],
                  ),
                ),
              ),
                            const SizedBox(height: 16),

              // Card Keahlian / Hobi (Minimal 3 InfoTile)
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Text(
                          'Makanan kesukaan',
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Divider(),
                      const InfoTile(
                        icon: Icons.food_bank_outlined,
                        label: 'Top makanan padang',
                        value: 'rendang, sate padang, tunjang',
                      ),
                    
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}