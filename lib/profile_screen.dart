import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 43, 26, 46),
              const Color.fromARGB(255, 143, 83, 158),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Card
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        // ignore: deprecated_member_use
                        color: Colors.blue[300]!.withOpacity(0.4),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color.fromARGB(255, 157, 139, 173),
                            const Color.fromARGB(255, 230, 235, 238),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          // Profile Picture with Gradient Border
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue[400]!,
                                  Colors.blue[600]!,
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  // ignore: deprecated_member_use
                                  color: Colors.blue[300]!.withOpacity(0.5),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(4),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage('assets/profile.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),

                          // Name
                          Text(
                            'Nurliyana Syamimi',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white[900],
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Designation
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            child: Text(
                              'Software Engineer',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white[700],
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Divider
                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  // ignore: deprecated_member_use
                                  Colors.blueGrey[200]!.withOpacity(0),
                                  const Color.fromARGB(255, 24, 89, 143),
                                  // ignore: deprecated_member_use
                                  const Color.fromARGB(255, 40, 47, 53).withOpacity(0),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Date of Birth
                          InfoRow(
                            icon: Icons.cake,
                            label: 'Date of Birth',
                            value: 'Mar 12, 2004',
                            iconColor: const Color.fromARGB(255, 253, 5, 170),
                          ),
                          const SizedBox(height: 15),

                          // Location
                          InfoRow(
                            icon: Icons.location_on,
                            value: 'Johor, Malaysia',
                            iconColor: Colors.red[400]!, label: 'Location',
                          ),
                          const SizedBox(height: 25),

                          // Contact Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ContactIconButton(
                                icon: Icons.email,
                                color: Colors.blue[600]!,
                                tooltip: 'Email',
                              ),
                              ContactIconButton(
                                icon: Icons.phone,
                                color: Colors.green[600]!,
                                tooltip: 'Phone',
                              ),
                              ContactIconButton(
                                icon: Icons.language,
                                color: Colors.orange[600]!,
                                tooltip: 'Website',
                              ),
                              ContactIconButton(
                                icon: Icons.business,
                                color: Colors.blue[800]!,
                                tooltip: 'LinkedIn',
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),

                          // Bio/Quote
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.blue[200]!,
                                width: 1.5,
                              ),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.format_quote,
                                  size: 24,
                                  color: Colors.blue[400],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '"Building beautiful mobile experiences, one line of code at a time."',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.blue[800],
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),

                          // Action Buttons
                          Row(
                            children: [
                              Expanded(
                                child: ActionButton(
                                  icon: Icons.message,
                                  label: 'Message',
                                  color: Colors.blue[600]!,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: ActionButton(
                                  icon: Icons.call,
                                  label: 'Call',
                                  color: Colors.green[600]!,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension on Color {
  Color? operator [](int other) {
    return null;
  }
}

// Custom Widget for Info Row
class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color iconColor;

  const InfoRow({super.key, 
    required this.icon,
    required this.label,
    required this.value,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: iconColor.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Custom Widget for Contact Icon Button
class ContactIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String tooltip;

  const ContactIconButton({super.key, 
    required this.icon,
    required this.color,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Container(
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: color.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(icon, color: color),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$tooltip tapped!'),
                duration: const Duration(milliseconds: 800),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Custom Widget for Action Button
class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ActionButton({super.key, 
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$label button pressed!'),
            duration: const Duration(milliseconds: 800),
          ),
        );
      },
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
      ),
    );
  }
}