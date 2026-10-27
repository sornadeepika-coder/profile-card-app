import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

/// Root widget of the application.
/// Sets up the MaterialApp configuration with Material 3 theming.
class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Elegant deep indigo
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF1F5F9), // Soft slate background
      ),
      home: const ProfileCardScreen(),
    );
  }
}

/// The main single-screen view displaying the profile card.
class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with clean title
      appBar: AppBar(
        title: const Text(
          'Profile Card App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFF0F172A),
      ),
      // SafeArea and SingleChildScrollView prevent any overflow on smaller screens
      // or when the device is rotated to landscape mode.
      body: const SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: ProfileCard(),
          ),
        ),
      ),
    );
  }
}

/// The main profile card widget.
/// Demonstrates the structured use of Container, Column, Row, and Text widgets.
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;

    return Container(
      // Responsive constraint: prevents the card from stretching unnaturally wide on tablets/web
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        // Subtle, modern shadow for a floating card aesthetic
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withOpacity(0.08),
            blurRadius: 24,
            offset: const Offset(0, 10),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Avatar with initials "SD"
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  primaryColor.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.25),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 46,
              backgroundColor: primaryColor,
              child: const Text(
                'SD',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Profile Name
          const Text(
            'Sorna Deepika',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
              letterSpacing: 0.3,
            ),
          ),

          const SizedBox(height: 8),

          // Student Role Badge using Container and Text
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Computer Science Engineering Student',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: primaryColor,
                letterSpacing: 0.2,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Subtle divider line
          const Divider(color: Color(0xFFE2E8F0), thickness: 1),

          const SizedBox(height: 20),

          // Contact Information Section Header
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF64748B),
                letterSpacing: 0.5,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Styled contact row: Email
          const ContactRow(
            icon: Icons.email_outlined,
            label: 'Email',
            value: 'deepika@example.com',
          ),

          const SizedBox(height: 12),

          // Styled contact row: Phone
          const ContactRow(
            icon: Icons.phone_outlined,
            label: 'Phone',
            value: '+91 98765 43210',
          ),

          const SizedBox(height: 12),

          // Styled contact row: Location
          const ContactRow(
            icon: Icons.location_on_outlined,
            label: 'Location',
            value: 'Tamil Nadu, India',
          ),
        ],
      ),
    );
  }
}

/// Reusable contact row widget.
/// Demonstrates the composition of Container, Row, and Text widgets.
class ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFE2E8F0),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Icon Container with soft background
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 20,
              color: primaryColor,
            ),
          ),
          const SizedBox(width: 14),

          // Details column with label & value
          // Expanded ensures text wraps cleanly and avoids horizontal overflow on narrow screens
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF94A3B8),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0F172A),
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
