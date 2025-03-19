import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/ui/ui.dart';

class GeneratePage extends StatefulWidget {
  const GeneratePage({super.key});

  @override
  State<GeneratePage> createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  // AppBar Title
  final double fontSize = 24.0;
  late final double lineHeight = 24.0 / fontSize;
  late final double letterSpacing = fontSize * 0.04;

  final _projectNameEC = TextEditingController();
  final _projectDescriptionEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            VadenColors.blackGradientStart,
            VadenColors.blackGradientEnd,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  VadenColors.gradientStart,
                  VadenColors.gradientEnd,
                ],
              ),
            ),
            child: AppBar(
              title: Text(
                'IN DEVELOPMENT',
                style: GoogleFonts.anekBangla(
                  color: VadenColors.txtSecondary,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  letterSpacing: letterSpacing,
                  height: lineHeight,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Stack(
                  children: [
                    // Centered title
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            VadenImage.vadenLogo,
                            width: 48,
                            height: 48,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'VADEN Generator',
                            style: GoogleFonts.anekBangla(
                              color: VadenColors.txtSecondary,
                              fontSize: 32,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned dropdown
                    Positioned(
                      right: 48,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: SizedBox(
                          width: 200,
                          child: VadenDropdown(
                            options: ['Portugues', 'Inlges'],
                            selectedOption: 'Portugues',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Center(
                child: SizedBox(
                  width: 580,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Criar novo projeto',
                        style: GoogleFonts.anekBangla(
                          color: VadenColors.txtSecondary,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 1,
                        width: 156,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              VadenColors.gradientStart,
                              VadenColors.gradientEnd,
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VadenTextInput(
                            label: 'Nome do projeto',
                            hint: 'Vaden Backend',
                            controller: _projectNameEC,
                          ),
                          const SizedBox(height: 32),
                          VadenTextInput(
                            label: 'Descrição',
                            hint: 'Projeto Vaden',
                            controller: _projectDescriptionEC,
                          ),
                          const SizedBox(height: 32),
                          SizedBox(
                            width: double.infinity,
                            child: VadenDropdown(
                              options: [
                                '2.17.0',
                                '2.18.0',
                                '2.19.0',
                              ],
                              title: 'Versão Dart',
                              selectedOption: 'Versão Dart',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48),
              Center(
                child: SizedBox(
                  width: 580,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dependencias',
                        style: GoogleFonts.anekBangla(
                          color: VadenColors.txtSecondary,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        height: 1,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              VadenColors.gradientStart,
                              VadenColors.gradientEnd,
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: SizedBox(
                                  width: 440,
                                  height: 56,
                                  child: VadenTextInput(
                                    label: 'Adicionar dependencias',
                                    hint: 'Http',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              SizedBox(
                                width: 124,
                                height: 56,
                                child: VadenButtonExtension.primary(
                                  title: 'Adicionar',
                                  onPressed: () {},
                                  icon: null,
                                  width: 120,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      Center(
                        child: VadenButtonExtension.outlined(
                          title: 'Gerar projeto',
                          onPressed: () {},
                          icon: null,
                          width: 320,
                          borderColor: VadenColors.stkWhite,
                        ),
                      ),
                      const SizedBox(height: 320),
                      Center(
                        child: Column(
                          spacing: 16,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Feito pela comunidade ',
                                  style: GoogleFonts.anekBangla(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: VadenColors.secondaryColor,
                                  ),
                                ),
                                SvgPicture.asset(
                                  VadenImage.flutterandoLogo,
                                  width: 120,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Copyright ',
                                  style: GoogleFonts.anekBangla(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: VadenColors.txtSupport2,
                                  ),
                                ),
                                SvgPicture.asset(
                                  VadenImage.copyrightIcon,
                                  width: 120,
                                  height: 24,
                                ),
                                Text(
                                  '2025',
                                  style: GoogleFonts.anekBangla(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: VadenColors.txtSupport2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
