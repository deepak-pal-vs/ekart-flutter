import 'package:first_flutter/widgets/AppDrawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Account Settings Section
            renderSectionHeader('Account Settings'),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Edit Profile'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigate to profile edit
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Change Password'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigate to password change
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Show privacy policy
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // App Preferences Section
            renderSectionHeader('App Preferences'),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text('Dark Mode'),
                    value: _darkModeEnabled,
                    secondary: Icon(Icons.dark_mode),
                    onChanged: (value) {
                      setState(() {
                        _darkModeEnabled = value;
                      });
                    },
                  ),
                  Divider(height: 1),
                  SwitchListTile(
                    title: Text('Enable Notifications'),
                    value: _notificationsEnabled,
                    secondary: Icon(Icons.notifications),
                    onChanged: (value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Language'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(_selectedLanguage),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    onTap: () {
                      renderDialog(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // App Info Section
            renderSectionHeader('About'),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(title: Text('Version'), trailing: Text('1.0.0')),
                  Divider(height: 1),
                  ListTile(
                    title: Text('Terms of Service'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Show terms
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderSectionHeader(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 1, 81, 122),
        ),
      ),
    );
  }

  void renderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile(
                title: Text('English'),
                value: 'English',
                groupValue: _selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value.toString();
                  });
                  Navigator.pop(context);
                },
              ),
              RadioListTile(
                title: Text('Spanish'),
                value: 'Spanish',
                groupValue: _selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value.toString();
                  });
                  Navigator.pop(context);
                },
              ),
              RadioListTile(
                title: Text('French'),
                value: 'French',
                groupValue: _selectedLanguage,
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value.toString();
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
