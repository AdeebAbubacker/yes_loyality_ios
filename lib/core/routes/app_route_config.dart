
import 'package:Yes_Loyalty/ui/screens/auth/user_signup/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/auth/user_otp/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/auth/user_signin/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/auth/user_verify/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/home/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/misc/full_screen_alert/layout_view.dart';
import 'package:Yes_Loyalty/ui/screens/misc/profile_edit/layout_view.dart';
import 'package:go_router/go_router.dart';
import 'package:Yes_Loyalty/ui/screens/splash/splash_screen.dart';


class MyappRoutes {
  static final GoRouter routes = GoRouter(
    routes: <GoRoute>[
      

      GoRoute(
        name: 'splashScreen',
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: 'signupScreen',
        path: '/user_signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        name: 'verifyYourAccount',
        path: '/user_verify',
        builder: (context, state) => const VerifyYourAccount(),
      ),
      GoRoute(
        name: 'Enter_otp_page',
        path: '/user_otp',
        builder: (context, state) => const Enter_otp_page(),
      ),
      GoRoute(
        name: 'Enter_otp_page2',
        path: '/success_alert',
        builder: (context, state) => const EnterOtpVerified(),
      ),
      GoRoute(
        name: 'sign_in',
        path: '/sign_in',
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
     

       GoRoute(
        name: 'profile_edit',
        path: '/profile_edit',
        builder: (context, state) => const  ProfileEdit(),
      ),
      // GoRoute(
      //   name: 'profile_edit',
      //   path: '/profile_edit',
      //   builder: (context, state) => const ProfileEdit(),
      // ),
      GoRoute(
        name: 'update_profile',
        path: '/update_profile',
        builder: (context, state) => const ProfileEdit(),
      ),
    ],
  );
}
