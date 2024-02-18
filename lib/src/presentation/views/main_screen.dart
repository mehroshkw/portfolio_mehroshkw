import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_mehroshkw/src/config/export_config.dart';
import 'package:portfolio_mehroshkw/src/utils/constants/app_strings.dart';
import 'package:portfolio_mehroshkw/src/utils/constants/nums.dart';
import 'package:portfolio_mehroshkw/src/utils/extensions/export_extensions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    final GlobalKey skillSectionKey = GlobalKey();
    final GlobalKey processSectionKey = GlobalKey();

    void scrollToSection(GlobalKey sectionKey) {
      final RenderBox renderBox =
          sectionKey.currentContext!.findRenderObject() as RenderBox;
      final sectionPosition = renderBox.localToGlobal(Offset.zero);
      _scrollController.animateTo(sectionPosition.dy,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }

    // void scrollToSection(GlobalKey sectionKey) {
    //   final RenderBox renderBox = sectionKey.currentContext!.findRenderObject() as RenderBox;
    //   final sectionPosition = renderBox.localToGlobal(Offset.zero);
    //   _scrollController.animateTo(
    //     sectionPosition.dy - MediaQuery.of(context).padding.top, // Adjusted position
    //     duration: const Duration(seconds: 1),
    //     curve: Curves.easeInOut,
    //   );
    // }

    // void scrollToSection(GlobalKey sectionKey) {
    //   final RenderBox renderBox = sectionKey.currentContext!.findRenderObject() as RenderBox;
    //   final sectionPosition = renderBox.localToGlobal(Offset.zero).dy;
    //   final screenHeight = MediaQuery.of(context).size.height;
    //
    //   // Calculate the target scroll position to scroll to the next section after the current one
    //   final targetScrollPosition = sectionPosition + screenHeight-700;
    //
    //   // Ensure that the target scroll position is within the bounds of the scrollable content
    //   final maxScrollExtent = _scrollController.position.maxScrollExtent;
    //   final clampedScrollPosition = targetScrollPosition.clamp(0.0, maxScrollExtent);
    //
    //   // Scroll to the calculated position
    //   _scrollController.animateTo(
    //     clampedScrollPosition,
    //     duration: const Duration(seconds: 1),
    //     curve: Curves.easeInOut,
    //   );
    // }

    return Scaffold(
      body: ListView(
        controller: _scrollController,
        padding: EdgeInsets.all(26.0),
        children: [
          const SizedBox(height: 50),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Image.asset('assets/images/dash_icon.png',
                      height: 90, width: 90, fit: BoxFit.contain))),
          LandingSection(
            onTap: () {
              print('Landing section tapped');
              scrollToSection(skillSectionKey);
            },
          ),
          const SizedBox(height: 100),
          SkillSection(
            key: skillSectionKey,
            onTap: () {
              scrollToSection(processSectionKey);
            },
          ),
          const SizedBox(height: 100),
          ProcessSection(
            key: processSectionKey,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class LandingSection extends StatelessWidget {
  const LandingSection({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final size = context.mediaSize;

    return context.isMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Stack(alignment: Alignment.centerLeft, children: [
                  Text('Flutter \nDeveloper',
                      style: theme.textTheme.displayLarge?.copyWith(
                          fontFamily: BaseConstant.proximaBold,
                          fontWeight: FontWeight.bold,
                          color:
                              theme.colorScheme.onPrimary.withOpacity(0.05))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 45),
                            Text("Hello, it's me",
                                style: theme.textTheme.displaySmall?.copyWith(
                                    fontFamily: BaseConstant.proximaBold,
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.onPrimary)),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Mehrosh',
                                      style: theme.textTheme.displayLarge
                                          ?.copyWith(
                                              fontFamily:
                                                  BaseConstant.proximaBold,
                                              fontWeight: FontWeight.w800,
                                              color:
                                                  theme.colorScheme.onPrimary)),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 14.0),
                                      child: Icon(Icons.circle,
                                          color: theme.colorScheme.primary,
                                          size: 20))
                                ])
                          ]),
                      Image.asset(
                        'assets/images/me.png',
                        height: size.height / 4.5,
                      ),
                    ],
                  )
                ]),
                SizedBox(
                    width: size.width,
                    child: Text(AppStrings.MYDESCRIPTION,
                        style: theme.textTheme.titleMedium?.copyWith(
                            fontFamily: BaseConstant.soinLight,
                            fontWeight: FontWeight.w100,
                            color: theme.colorScheme.onPrimary))),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: onTap,
                  text: 'Scroll for more'.toUpperCase(),
                )
              ])
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Text('Flutter \nDeveloper',
                            style: theme.textTheme.displayLarge?.copyWith(
                                fontFamily: BaseConstant.proximaBold,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onPrimary
                                    .withOpacity(0.05))),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 45),
                              Text("Hello, it's me",
                                  style: theme.textTheme.displaySmall?.copyWith(
                                      fontFamily: BaseConstant.proximaBold,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.onPrimary)),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Mehrosh',
                                        style: theme.textTheme.displayLarge
                                            ?.copyWith(
                                                fontFamily:
                                                    BaseConstant.proximaBold,
                                                fontWeight: FontWeight.w800,
                                                color: theme
                                                    .colorScheme.onPrimary)),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 14.0),
                                        child: Icon(Icons.circle,
                                            color: theme.colorScheme.primary,
                                            size: 20))
                                  ])
                            ])
                      ]),
                      SizedBox(
                          width: context.isMobile ? size.width : size.width / 3,
                          child: Text(AppStrings.MYDESCRIPTION,
                              style: theme.textTheme.titleMedium?.copyWith(
                                  fontFamily: BaseConstant.soinLight,
                                  fontWeight: FontWeight.w100,
                                  color: theme.colorScheme.onPrimary))),
                      const SizedBox(height: 30),
                      CustomButton(
                        onPressed: onTap,
                        text: 'Scroll for more'.toUpperCase(),
                      )
                    ]),
                const SizedBox(width: 40),
                Image.asset('assets/images/me.png',
                    height: size.height / 1.5, width: size.width / 3)
              ]);
  }
}

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = context.mediaSize;
    final theme = context.theme;

    return Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(26.0),
        alignment: Alignment.center,
        child: context.isWeb
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    SizedBox(
                        width: size.width / 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppStrings.MY_SKILL_SET.toUpperCase(),
                                  style: theme.textTheme.titleMedium?.copyWith(
                                      fontFamily: BaseConstant.soinMedium,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.primary)),
                              const SizedBox(height: defaultPadding),
                              Text(AppStrings.FLUTTER_DEVELOPER_SKILLSET,
                                  style: theme.textTheme.displaySmall?.copyWith(
                                      fontFamily: BaseConstant.proximaBold,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.onSurface)),
                              const SizedBox(height: defaultPadding)
                            ])),
                    const SizedBox(width: 40),
                    SizedBox(
                        width: size.width / 3,
                        child: Text(AppStrings.MYSKILLSDESCRIPTION,
                            style: theme.textTheme.titleMedium?.copyWith(
                                fontFamily: BaseConstant.soinLight,
                                fontWeight: FontWeight.w100,
                                color: theme.colorScheme.onPrimary))),
                  ])
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    SizedBox(
                        width: size.width ,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppStrings.MY_SKILL_SET.toUpperCase(),
                                  style: theme.textTheme.titleMedium?.copyWith(
                                      fontFamily: BaseConstant.soinMedium,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.primary)),
                              const SizedBox(height: defaultPadding),
                              Text(AppStrings.FLUTTER_DEVELOPER_SKILLSET,
                                  style: theme.textTheme.displaySmall?.copyWith(
                                      fontFamily: BaseConstant.proximaBold,
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.onSurface)),
                              const SizedBox(height: defaultPadding)
                            ])),
                    const SizedBox(width: 40),
                    SizedBox(
                        width: size.width ,
                        child: Text(AppStrings.MYSKILLSDESCRIPTION,
                            style: theme.textTheme.titleMedium?.copyWith(
                                fontFamily: BaseConstant.soinLight,
                                fontWeight: FontWeight.w100,
                                color: theme.colorScheme.onPrimary))),
                  ]));
  }
}

class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = context.mediaSize;
    final theme = context.theme;

    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.all(26.0),
      alignment: Alignment.center,
      color: Colors.cyan,
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: GestureDetector(
            onTap: widget.onPressed,
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    gradient: _isHovered
                        ? LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                                theme.colorScheme.primary,
                                theme.colorScheme.primary.withOpacity(0.3)
                              ])
                        : null,
                    border: Border(
                        left: BorderSide(
                            color: theme.colorScheme.primary, width: 4.0))),
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 24.0),
                child: Stack(children: [
                  FractionalTranslation(
                      translation: Offset(_isHovered ? 0.0 : 0.0, 0.0),
                      child: Text(widget.text,
                          style: TextStyle(
                              color: _isHovered
                                  ? Colors.black
                                  : theme.colorScheme.primary,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              letterSpacing: 1.5))),
                  FractionalTranslation(
                      translation: Offset(_isHovered ? -1.0 : 0.0, 0.0),
                      child: Text(widget.text,
                          style: TextStyle(
                              color: _isHovered
                                  ? Colors.transparent
                                  : theme.colorScheme.primary,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              letterSpacing: 1.5)))
                ]))));
  }
}
