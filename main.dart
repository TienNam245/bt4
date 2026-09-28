import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 390),
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                top: 44,
                bottom: 36,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. TopBar
                  SizedBox(
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, size: 18),
                          onPressed: () {},
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.share, size: 18),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 2. Profile Header (Chuẩn 100% Figma)
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Avatar Ring 140x140
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 140,
                              height: 140,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFFB088),
                                    Color(0xFFFF8080),
                                    Color(0xFFFFCF70),
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const CircleAvatar(
                                  radius: 62,
                                  backgroundImage: AssetImage('images/meo.png'),
                                ),
                              ),
                            ),
                            // Verified Badge 28x28
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: const Color(0xFF0284C7),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // Text 'Alex Rivers' - 24px w800 #0F172A
                        const Text(
                          'Alex Rivers',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Text 'Lead Mobile Engineer' - 15px w500 #64748B
                        const Text(
                          'Lead Mobile Engineer',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Location Pill (Radius 20, Background #F1F5F9)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F5F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Color(0xFF475569),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Tokyo, Japan',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF475569),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 3. Stats Card (Chuẩn 100% Figma: Height 78px, Radius 20, BoxShadow 0 8 18)
                  Container(
                    height: 78,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 18, // Chỉnh theo đúng BoxShadow 0 8 18 trong Figma
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '148',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                                height: 1.1,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Projects',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF64748B),
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                          child: VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Color(0xFFE2E8F0),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '9 Yrs',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                                height: 1.1,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Experience',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF64748B),
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                          child: VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Color(0xFFE2E8F0),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0F172A),
                                    height: 1.1,
                                  ),
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: Color(0xFFFFC107),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              'Rating',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF64748B),
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 4. About Me (Chuẩn 100% Figma: Heading 17px Bold, Body 14px Line-height 21px)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Passionate Lead Mobile Engineer specialized in Flutter, Dart, and building high-performance cross-platform applications. Focused on elegant architectures and exceptional user experiences.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5, // 21px line height / 14px font size = 1.5
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),

                  // 5. Skills & Expertise
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Skills & Expertise',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 10,
                        children: [
                          _buildSkillChip(
                            label: 'Flutter',
                            icon: Icons.navigation_outlined,
                            bgColor: const Color(0xFFE0F2FE),
                            textColor: const Color(0xFF0284C7),
                          ),
                          _buildSkillChip(
                            label: 'Dart',
                            icon: Icons.code,
                            bgColor: const Color(0xFFDCFCE7),
                            textColor: const Color(0xFF16A34A),
                          ),
                          _buildSkillChip(
                            label: 'Clean Arch',
                            icon: Icons.layers_outlined,
                            bgColor: const Color(0xFFFEE2E2),
                            textColor: const Color(0xFFDC2626),
                          ),
                          _buildSkillChip(
                            label: 'UI/UX',
                            icon: Icons.edit_outlined,
                            bgColor: const Color(0xFFF3E8FF),
                            textColor: const Color(0xFF9333EA),
                          ),
                          _buildSkillChip(
                            label: 'Firebase',
                            icon: Icons.local_fire_department_outlined,
                            bgColor: const Color(0xFFFEF3C7),
                            textColor: const Color(0xFFD97706),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // 6. Featured Projects
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Featured Projects',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _buildProjectCard(
                              title: 'E-Shop Flutter',
                              subtitle: 'Mobile App • 2026',
                              imagePath: 'images/eshop.png',
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _buildProjectCard(
                              title: 'Crypto Vault',
                              subtitle: 'Finance • Clean Arch',
                              imagePath: 'images/crypto.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // 7. Contact Card (Hoàn thành chuẩn thông số Figma)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildContactRow(
                          icon: Icons.alternate_email_rounded,
                          title: 'Contact Information',
                          isHeader: true,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xFFF1F5F9),
                          ),
                        ),
                        _buildContactRow(
                          icon: Icons.mail_outline_rounded,
                          title: 'alex.rivers@email.com',
                        ),  
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xFFF1F5F9),
                          ),
                        ),
                        _buildContactRow(
                          icon: Icons.phone_outlined,
                          title: '+81 (90) 1234-5678',
                          
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkillChip({
    required String label,
    required IconData icon,
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: textColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE2E8F0),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 85,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF94A3B8),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow({
    required IconData icon,
    required String title,
    bool isHeader = false,
  }) {
    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 18,
            color: const Color(0xFF64748B),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isHeader ? FontWeight.bold : FontWeight.w500,
              color: isHeader ? const Color(0xFF0F172A) : const Color(0xFF334155),
            ),
          ),
        ),
      ],
    );
  }
}