import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_id.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('id'),
    Locale('tr'),
    Locale('ur')
  ];

  /// No description provided for @registration_agreement.
  ///
  /// In en, this message translates to:
  /// **'By registering with us, you agree to'**
  String get registration_agreement;

  /// No description provided for @terms_of_use_and_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use and Privacy Policy'**
  String get terms_of_use_and_privacy_policy;

  /// No description provided for @enter_your_country_code_and_mobile_number_to_login_as_umrah_needer.
  ///
  /// In en, this message translates to:
  /// **'Enter your country code and mobile number to log in as an Umrah needer'**
  String get enter_your_country_code_and_mobile_number_to_login_as_umrah_needer;

  /// No description provided for @mobile_number_without_country_code.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number (without country code)'**
  String get mobile_number_without_country_code;

  /// No description provided for @enter_mobile_number.
  ///
  /// In en, this message translates to:
  /// **'Enter mobile number'**
  String get enter_mobile_number;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enter_password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @create_new_account.
  ///
  /// In en, this message translates to:
  /// **'Create new account'**
  String get create_new_account;

  /// No description provided for @new_registration.
  ///
  /// In en, this message translates to:
  /// **'New Registration'**
  String get new_registration;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @enter_your_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_your_full_name;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @enter_password_to_confirm.
  ///
  /// In en, this message translates to:
  /// **'Enter password to confirm'**
  String get enter_password_to_confirm;

  /// No description provided for @passwords_do_not_match.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwords_do_not_match;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @this_user_already_exists.
  ///
  /// In en, this message translates to:
  /// **'This user already exists'**
  String get this_user_already_exists;

  /// No description provided for @enter_phone_number_to_reset_password.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number to reset password'**
  String get enter_phone_number_to_reset_password;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset_password;

  /// No description provided for @enter_your_country.
  ///
  /// In en, this message translates to:
  /// **'Enter your country'**
  String get enter_your_country;

  /// No description provided for @new_password_sent_to_your_number.
  ///
  /// In en, this message translates to:
  /// **'New password sent to your number'**
  String get new_password_sent_to_your_number;

  /// No description provided for @back_to_registration.
  ///
  /// In en, this message translates to:
  /// **'Back to registration'**
  String get back_to_registration;

  /// No description provided for @choose_whats_best_for_you.
  ///
  /// In en, this message translates to:
  /// **'Choose what\'s best for you'**
  String get choose_whats_best_for_you;

  /// No description provided for @requests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get requests;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @no_notifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get no_notifications;

  /// No description provided for @ramadan_umrah.
  ///
  /// In en, this message translates to:
  /// **'Ramadan Umrah'**
  String get ramadan_umrah;

  /// No description provided for @urgent_umrah_same_day.
  ///
  /// In en, this message translates to:
  /// **'Urgent Umrah (Same day)'**
  String get urgent_umrah_same_day;

  /// No description provided for @year_round_umrah.
  ///
  /// In en, this message translates to:
  /// **'Year-round Umrah'**
  String get year_round_umrah;

  /// No description provided for @umrah_in_rajab.
  ///
  /// In en, this message translates to:
  /// **'Umrah in Rajab'**
  String get umrah_in_rajab;

  /// No description provided for @umrah_in_shaaban.
  ///
  /// In en, this message translates to:
  /// **'Umrah in Shaaban'**
  String get umrah_in_shaaban;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @no_requests_yet.
  ///
  /// In en, this message translates to:
  /// **'No requests yet'**
  String get no_requests_yet;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello,'**
  String get hello;

  /// No description provided for @personal_information.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personal_information;

  /// No description provided for @your_personal_information_like_name_and_mobile_number_and_password.
  ///
  /// In en, this message translates to:
  /// **'Your personal information like name, mobile number, and password'**
  String get your_personal_information_like_name_and_mobile_number_and_password;

  /// No description provided for @change_currency.
  ///
  /// In en, this message translates to:
  /// **'Change Currency'**
  String get change_currency;

  /// No description provided for @change_currency_in_the_app_to_another_currency.
  ///
  /// In en, this message translates to:
  /// **'Change currency in the app to another currency'**
  String get change_currency_in_the_app_to_another_currency;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @discount_code.
  ///
  /// In en, this message translates to:
  /// **'Discount Code'**
  String get discount_code;

  /// No description provided for @enter_discount_code_to_get_discount_now.
  ///
  /// In en, this message translates to:
  /// **'Enter discount code to get discount now'**
  String get enter_discount_code_to_get_discount_now;

  /// No description provided for @terms_and_privacy.
  ///
  /// In en, this message translates to:
  /// **'Terms and Privacy'**
  String get terms_and_privacy;

  /// No description provided for @learn_about_app_terms_and_your_privacy.
  ///
  /// In en, this message translates to:
  /// **'Learn about app terms and your privacy'**
  String get learn_about_app_terms_and_your_privacy;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get delete_account;

  /// No description provided for @new_request.
  ///
  /// In en, this message translates to:
  /// **'New Request'**
  String get new_request;

  /// No description provided for @enter_personal_data_of_the_person_for_whom_umrah_will_be_completed.
  ///
  /// In en, this message translates to:
  /// **'Enter personal data of the person for whom service will be completed'**
  String get enter_personal_data_of_the_person_for_whom_umrah_will_be_completed;

  /// No description provided for @enter_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter full name'**
  String get enter_full_name;

  /// No description provided for @additional_comment.
  ///
  /// In en, this message translates to:
  /// **'Additional Comment'**
  String get additional_comment;

  /// No description provided for @next_step.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get next_step;

  /// No description provided for @payment_successful.
  ///
  /// In en, this message translates to:
  /// **'Payment successful\nPlease keep the invoice'**
  String get payment_successful;

  /// No description provided for @transaction_code.
  ///
  /// In en, this message translates to:
  /// **'Transaction Code'**
  String get transaction_code;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @confirm_request.
  ///
  /// In en, this message translates to:
  /// **'Confirm Request'**
  String get confirm_request;

  /// No description provided for @beneficiary_name.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary Name'**
  String get beneficiary_name;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @payment_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Payment in progress..'**
  String get payment_in_progress;

  /// No description provided for @pay_now.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get pay_now;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @reached_kaaba.
  ///
  /// In en, this message translates to:
  /// **'Reached Kaaba'**
  String get reached_kaaba;

  /// No description provided for @circumambulate_around_kaaba.
  ///
  /// In en, this message translates to:
  /// **'Circumambulate around Kaaba'**
  String get circumambulate_around_kaaba;

  /// No description provided for @saee_between_safa_and_marwah.
  ///
  /// In en, this message translates to:
  /// **'Saee between Safa and Marwah'**
  String get saee_between_safa_and_marwah;

  /// No description provided for @hair_cutting.
  ///
  /// In en, this message translates to:
  /// **'Hair Cutting'**
  String get hair_cutting;

  /// No description provided for @watch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get watch;

  /// No description provided for @upload_videos.
  ///
  /// In en, this message translates to:
  /// **'Upload Videos'**
  String get upload_videos;

  /// No description provided for @uploading_video_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Uploading video in progress..'**
  String get uploading_video_in_progress;

  /// No description provided for @kaaba_reached.
  ///
  /// In en, this message translates to:
  /// **'Kaaba Reached'**
  String get kaaba_reached;

  /// No description provided for @confirm_completion.
  ///
  /// In en, this message translates to:
  /// **'Confirm Completion'**
  String get confirm_completion;

  /// No description provided for @invalid_phone_number_or_password.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number or password'**
  String get invalid_phone_number_or_password;

  /// No description provided for @retry_again.
  ///
  /// In en, this message translates to:
  /// **'Retry Again'**
  String get retry_again;

  /// No description provided for @enter_status.
  ///
  /// In en, this message translates to:
  /// **'Enter Status'**
  String get enter_status;

  /// No description provided for @sick.
  ///
  /// In en, this message translates to:
  /// **'Sick'**
  String get sick;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @deceased.
  ///
  /// In en, this message translates to:
  /// **'Deceased'**
  String get deceased;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @currency_changed.
  ///
  /// In en, this message translates to:
  /// **'Currency Changed'**
  String get currency_changed;

  /// No description provided for @error_occurred_currency_not_changed.
  ///
  /// In en, this message translates to:
  /// **'Error occurred, currency not changed'**
  String get error_occurred_currency_not_changed;

  /// No description provided for @data_modified.
  ///
  /// In en, this message translates to:
  /// **'Data Modified'**
  String get data_modified;

  /// No description provided for @sure_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Sure to Delete Account?'**
  String get sure_delete_account;

  /// No description provided for @your_account_will_be_deleted_forever.
  ///
  /// In en, this message translates to:
  /// **'Your account will be deleted forever'**
  String get your_account_will_be_deleted_forever;

  /// No description provided for @incorrect_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Incorrect phone number'**
  String get incorrect_phone_number;

  /// No description provided for @phone_number_already_exists.
  ///
  /// In en, this message translates to:
  /// **'Phone number already exists'**
  String get phone_number_already_exists;

  /// No description provided for @enter_discount_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Discount Code'**
  String get enter_discount_code;

  /// No description provided for @you_have_received_discount.
  ///
  /// In en, this message translates to:
  /// **'You have received discount'**
  String get you_have_received_discount;

  /// No description provided for @following_umrah.
  ///
  /// In en, this message translates to:
  /// **'Following Umrah'**
  String get following_umrah;

  /// No description provided for @umrah_performer_arrived.
  ///
  /// In en, this message translates to:
  /// **'The Umrah performer arrived at the Holy Kaaba 🕋'**
  String get umrah_performer_arrived;

  /// No description provided for @video_display_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred, please try again to display the video'**
  String get video_display_error;

  /// No description provided for @trim_hair.
  ///
  /// In en, this message translates to:
  /// **'Trim a part of the hair ✂️'**
  String get trim_hair;

  /// No description provided for @performer_hastened.
  ///
  /// In en, this message translates to:
  /// **'The performer hastened between Safa and Marwa 🕋'**
  String get performer_hastened;

  /// No description provided for @performer_circumambulated.
  ///
  /// In en, this message translates to:
  /// **'The performer circumambulated around the Kaaba 🕋'**
  String get performer_circumambulated;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @did_not_started_yet.
  ///
  /// In en, this message translates to:
  /// **'Hasn\'t started yet'**
  String get did_not_started_yet;

  /// No description provided for @you.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get you;

  /// No description provided for @register_now.
  ///
  /// In en, this message translates to:
  /// **'Register now with ease to request your Umrah 🕋'**
  String get register_now;

  /// No description provided for @we_are_happy.
  ///
  /// In en, this message translates to:
  /// **'We are delighted with your choice to deal with us, and we promise to exert our utmost effort to provide our services to you exceptionally and in a manner befitting our valued customers and beneficiaries. You are dear to our hearts, and you have the right to our love and assistance. So, do not hesitate to inquire about any information, as we are here to support you around the clock.'**
  String get we_are_happy;

  /// No description provided for @authorization.
  ///
  /// In en, this message translates to:
  /// **'It is an electronic application that facilitates the process of authorizing one of the qualified service providers in the Makkah region to perform Hajj and Umrah for those with a legitimate proxy license for them (such as the terminally ill, the incapacitated, the elderly unable to travel, the deceased), and all service providers who have previously performed Hajj and Umrah for themselves, as they are memorizers of the Quran and students of Islamic knowledge, that is, from the best of this nation (and we count them as such). This is intended to be a reward paid to them to support them in continuing their journey of seeking knowledge and benefiting the nation. The role of the authorization team does not stop at carefully selecting service providers but extends to holding training courses for them to increase awareness, remind them, and renew the intention that their work is assisting their brothers and sisters in need, and that the essence is seeking what is with Allah in terms of reward and blessing, and renewing the intention while emphasizing that there is no religious harm in receiving material compensation for performing the ritual on their behalf, as the worship of Hajj or Umrah is a mixed worship (financial and physical), and the effort in it is on both fronts, and Allah knows best.'**
  String get authorization;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More...'**
  String get more;

  /// No description provided for @less.
  ///
  /// In en, this message translates to:
  /// **'Less...'**
  String get less;

  /// No description provided for @our_message.
  ///
  /// In en, this message translates to:
  /// **'Our Message'**
  String get our_message;

  /// No description provided for @facilitating_muslims.
  ///
  /// In en, this message translates to:
  /// **'Facilitating Muslims from all corners of the earth through advanced technological solutions to help them achieve rewards and benefits in this world and the Hereafter.'**
  String get facilitating_muslims;

  /// No description provided for @our_goals.
  ///
  /// In en, this message translates to:
  /// **'Our Goals'**
  String get our_goals;

  /// No description provided for @umrah_student.
  ///
  /// In en, this message translates to:
  /// **'Umrah Requester'**
  String get umrah_student;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// No description provided for @taffweed.
  ///
  /// In en, this message translates to:
  /// **'Taffweed'**
  String get taffweed;

  /// No description provided for @opening_doors.
  ///
  /// In en, this message translates to:
  /// **'Opening doors of hope and optimism for the benefiting Muslims from our services to gain rewards and achieve the principle of cooperation, offering an advanced technological model that serves the needs of our Arab and Islamic communities.'**
  String get opening_doors;

  /// No description provided for @values.
  ///
  /// In en, this message translates to:
  /// **'Our values'**
  String get values;

  /// No description provided for @values_description.
  ///
  /// In en, this message translates to:
  /// **'Cooperation among individuals of societies is a duty and necessity, not an ideal. Indicating goodness is one of the most obligatory duties of the nation. Facilitating for individuals of the nation, especially those who are licensed, their rights that we seek to deliver to the deserving.'**
  String get values_description;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @privacy_policy_description.
  ///
  /// In en, this message translates to:
  /// **'The Tafweed application management is committed to security, compliance, and maintaining the absolute confidentiality of the entered user data, protecting information and electronic payment or bank transfer data to pay for services, as well as personal service applicant data (beneficiary) such as (First Name - Last Name - Email - Country - Mobile Number).'**
  String get privacy_policy_description;

  /// No description provided for @contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contact_information;

  /// No description provided for @contact_information_description.
  ///
  /// In en, this message translates to:
  /// **'The Tafweed application collects information that can help improve the experience, such as the language the device operates in and the type of operating system it has, in accordance with local regulations in the Kingdom of Saudi Arabia and the United Arab Emirates.'**
  String get contact_information_description;

  /// No description provided for @information_protection_and_storage.
  ///
  /// In en, this message translates to:
  /// **'Information Protection and Storage'**
  String get information_protection_and_storage;

  /// No description provided for @information_protection_and_storage_description.
  ///
  /// In en, this message translates to:
  /// **'The Tafweed application stores user information on servers determined by the application management to ensure the protection of this data from intrusion according to cyber security standards, so the application management may share some information with insurance partners (as a third party) these servers according to the nature of the work and its requirements and confidentiality agreements and non-disclosure.'**
  String get information_protection_and_storage_description;

  /// No description provided for @general_terms.
  ///
  /// In en, this message translates to:
  /// **'General Terms'**
  String get general_terms;

  /// No description provided for @general_terms_description.
  ///
  /// In en, this message translates to:
  /// **'Some changes may occur to the privacy policy according to safety requirements and laws, and Tafweed application has the right to add or change the terms of the privacy policy, so we advise reviewing the privacy policy periodically to know the updates in it. The application management also has the right to terminate the user account if it does not accept any change made by the application management in the privacy policy.'**
  String get general_terms_description;

  /// No description provided for @terms_of_use.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get terms_of_use;

  /// No description provided for @terms_of_use_description.
  ///
  /// In en, this message translates to:
  /// **'- Service Providers: They are the individuals who provide the service and can be authorized and contracted with through the request via the application. - Application Management: They are the working team that acts as an intermediary between the application users and the service providers, coordinates work, ensures the rights of both parties, and manages operations and supervision.'**
  String get terms_of_use_description;

  /// No description provided for @service_description.
  ///
  /// In en, this message translates to:
  /// **'Service Description'**
  String get service_description;

  /// No description provided for @service_description_content.
  ///
  /// In en, this message translates to:
  /// **'Tafweed application acts as an electronic intermediary between service providers and beneficiaries and ensures providing service providers with a high degree of eligibility and efficiency. It also provides tracking of the steps performed during the rituals of Umrah from the Miqat to the end of Tawaf or Sa\'i through video documentation and sending it to users\' accounts in the application.'**
  String get service_description_content;

  /// No description provided for @nature_of_contract.
  ///
  /// In en, this message translates to:
  /// **'Nature of Contract'**
  String get nature_of_contract;

  /// No description provided for @nature_of_contract_content.
  ///
  /// In en, this message translates to:
  /// **'Since all the services we provide are electronic, and dealing with users is also done electronically, registering an account with the application is considered a tripartite electronic contract between the contracting parties, which are the users, the application management, and the service providers. It takes into account all the legal provisions applicable in the country of establishment and operation.'**
  String get nature_of_contract_content;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @payment_method_content.
  ///
  /// In en, this message translates to:
  /// **'The application provides various payment methods through credit cards or any electronic payment methods according to the applicable laws and under the relevant control within the borders of the collection country. The official currency of the operating and collection country is adopted, and it is subject to the laws and regulations of the central banks in the working country.'**
  String get payment_method_content;

  /// No description provided for @cancellation.
  ///
  /// In en, this message translates to:
  /// **'Cancellation'**
  String get cancellation;

  /// No description provided for @cancellation_content.
  ///
  /// In en, this message translates to:
  /// **'The customer has the right to cancel the order if the application management has not sent the request to the service provider, usually within a maximum of 4 hours in urgent cases and peak times during the year (seasons) and 8 hours in normal times. The customer is not entitled to cancel the order after that, to avoid damage to the application management and the service provider in case of cancellation.'**
  String get cancellation_content;

  /// No description provided for @compensation.
  ///
  /// In en, this message translates to:
  /// **'Compensation'**
  String get compensation;

  /// No description provided for @compensation_content.
  ///
  /// In en, this message translates to:
  /// **'In case the service provider does not provide the service or makes a mistake in performing the rituals (which is rare), the application management must provide another service provider to perform the service instead without asking the user for any additional amounts.'**
  String get compensation_content;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_and_conditions;

  /// No description provided for @payment_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process'**
  String get payment_error;

  /// No description provided for @choose_app_language.
  ///
  /// In en, this message translates to:
  /// **'Choose application language'**
  String get choose_app_language;

  /// No description provided for @service_providers.
  ///
  /// In en, this message translates to:
  /// **'- Service Providers: They are individuals who provide the service and can be delegated and contracted with through the application.'**
  String get service_providers;

  /// No description provided for @app_management.
  ///
  /// In en, this message translates to:
  /// **'- App Management: They are the team that acts as an intermediary between the application users and service providers, coordinating the work, ensuring the rights of both parties, and managing operational and regulatory processes.'**
  String get app_management;

  /// No description provided for @judgments.
  ///
  /// In en, this message translates to:
  /// **'Judgments'**
  String get judgments;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @last_price.
  ///
  /// In en, this message translates to:
  /// **'Last Price'**
  String get last_price;

  /// No description provided for @before_discount.
  ///
  /// In en, this message translates to:
  /// **'Before Discount'**
  String get before_discount;

  /// No description provided for @follow_rituals.
  ///
  /// In en, this message translates to:
  /// **'Follow Rituals'**
  String get follow_rituals;

  /// No description provided for @you_got_discount.
  ///
  /// In en, this message translates to:
  /// **'You Got a Discount'**
  String get you_got_discount;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate the app'**
  String get rate;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share the app'**
  String get share;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @request_number.
  ///
  /// In en, this message translates to:
  /// **'Request number'**
  String get request_number;

  /// No description provided for @enter_person_details.
  ///
  /// In en, this message translates to:
  /// **'Enter person details'**
  String get enter_person_details;

  /// No description provided for @about_him.
  ///
  /// In en, this message translates to:
  /// **'About him'**
  String get about_him;

  /// No description provided for @contact_us.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contact_us;

  /// No description provided for @contact_us_now.
  ///
  /// In en, this message translates to:
  /// **'Contact us now and will respone as soon as possible'**
  String get contact_us_now;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @nothing_new_to_change.
  ///
  /// In en, this message translates to:
  /// **'Nothing new to change'**
  String get nothing_new_to_change;

  /// No description provided for @mufawwid.
  ///
  /// In en, this message translates to:
  /// **'The delegate'**
  String get mufawwid;

  /// No description provided for @request_umrah_for_loved_ones.
  ///
  /// In en, this message translates to:
  /// **'Request Umrah for your loved ones through the Tafweeed app'**
  String get request_umrah_for_loved_ones;

  /// No description provided for @in_tafweeed_we_perform_umrah_for_the_sick_disabled_deceased.
  ///
  /// In en, this message translates to:
  /// **'In Tafweeed, we perform Umrah for the sick, disabled, and deceased'**
  String get in_tafweeed_we_perform_umrah_for_the_sick_disabled_deceased;

  /// No description provided for @prophet_said_follow_up_hajj_and_umrah_remove_poverty_sins.
  ///
  /// In en, this message translates to:
  /// **'The Prophet (PBUH) said: Follow up Hajj and Umrah, for they remove poverty and sins'**
  String get prophet_said_follow_up_hajj_and_umrah_remove_poverty_sins;

  /// No description provided for @tafweeed_app_is_source_of_good_request_umrah_now.
  ///
  /// In en, this message translates to:
  /// **'The Tafweeed app is a source of overflowing goodness, request Umrah now'**
  String get tafweeed_app_is_source_of_good_request_umrah_now;

  /// No description provided for @guide_to_good_is_like_the_doer_of_good_in_tafweeed.
  ///
  /// In en, this message translates to:
  /// **'The guide to good is like the doer of good, and in Tafweeed, we guide you to great rewards from the Generous Lord'**
  String get guide_to_good_is_like_the_doer_of_good_in_tafweeed;

  /// No description provided for @you_can_complete_umrah_for_disabled_person.
  ///
  /// In en, this message translates to:
  /// **'You can complete Umrah on behalf of a disabled person'**
  String get you_can_complete_umrah_for_disabled_person;

  /// No description provided for @registration_done_successfully_now_login.
  ///
  /// In en, this message translates to:
  /// **'Registration done successfully, now login'**
  String get registration_done_successfully_now_login;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'id', 'tr', 'ur'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'id': return AppLocalizationsId();
    case 'tr': return AppLocalizationsTr();
    case 'ur': return AppLocalizationsUr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
