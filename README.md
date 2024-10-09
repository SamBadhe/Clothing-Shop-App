# Clothing Shop App

## Overview
The Clothing Shop App is a feature-rich mobile application built using Flutter. It provides users with a seamless shopping experience, allowing them to browse products, manage their cart, and make purchases. The app incorporates various authentication methods and offers a customizable interface to enhance user engagement.

## Major Features

- *Authentication Methods*
  - *Google OAuth*: Sign in with Google accounts for quick access.
  - *Email/Password Authentication*: Create an account using email and password.
  - *Guest User/Anonymous Login*: Browse products without creating an account.
  - *Phone Verification*: Secure sign-up and login using phone numbers.

- *Dashboard*: 
  - A user-friendly dashboard displaying available products, featured items, and promotions.

- *Products Menu*: 
  - A comprehensive menu to browse different clothing categories and items.

- *Cart*: 
  - An intuitive cart feature to manage selected items for checkout.

- *Checkout*: 
  - A streamlined checkout process for quick and easy transactions.

- *Image Picker*: 
  - Allows users to upload images, enhancing profile customization and product interaction.

- *ReCaptcha*: 
  - Integrated ReCaptcha for added security during sign-up and login processes.

- *Custom Themes*: 
  - Users can select from multiple themes for a personalized app experience.

- *Search Functionality*: 
  - Quickly find products using the built-in search feature.

- *Personas*: 
  - Tailored shopping experiences based on user preferences and behavior.

- *Dark Theme Toggle*: 
  - Users can switch between light and dark themes based on their preferences.

- *Account Deletion*: 
  - Users can now delete their accounts with ease.

- *Navigation*: 
  - Improved navigation flow for a better user experience.

- *Profile Drawer*: 
  - Enhanced profile drawer for quick access to user information and settings.

## Getting Started

To run the Clothing Shop App locally, follow these steps:

### Prerequisites

- Flutter SDK installed on your machine.
- An active Firebase project set up for your app.

### Installation Steps

1. *Clone the Repository*
   bash
   git clone <repository-url>
   cd clothing_shop_app

2. **Initialize Firebase**
   1. Set up your Firebase project on the [Firebase Console](https://console.firebase.google.com/).
   2. Follow the instructions to add your app to Firebase and download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS).
  
3. **Add Firebase Configuration**
   - Place the `google-services.json` file in the `android/app` directory.
   - For iOS, place the `GoogleService-Info.plist` file in the `ios/Runner` directory.
  
4. **Run Pub Get**
   bash
   flutter pub get

5. *Run the App*
   ```bash
   flutter run
