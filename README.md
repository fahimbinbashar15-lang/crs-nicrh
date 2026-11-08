# CRS NICRH – Android app (Capacitor)

Needs on your computer: Node.js 18+, Android Studio (includes the Android SDK and JDK 17).

1. `sh fetch-libs.sh`          (downloads the Excel and PDF libraries into www/)
2. `npm install`
3. `npx cap add android`
4. `npx cap sync android`
5. Build the APK, either:
   - `cd android && ./gradlew assembleDebug`
     -> android/app/build/outputs/apk/debug/app-debug.apk
   - or `npx cap open android`, then Build > Build APK(s) in Android Studio.
6. Copy app-debug.apk to the phone and open it (allow "install unknown apps" when asked).

Notes
- Patient data is stored on the phone only (the WebView's local storage). Uninstalling the app or clearing its data erases it, so export Excel regularly.
- Excel and PDF files open in the Android share sheet: save to Files, Drive, or send by email.
- The debug APK is for your own phone. For Google Play, create a signed release build.
- Without step 1 the app opens, but Excel and PDF export will not work.

## No Android Studio? Build the APK on GitHub (free)
1. Create a free GitHub account and a new empty repository named crs-nicrh (branch: main).
2. Upload everything from this zip, including the hidden .github folder.
3. Open the repository's Actions tab, choose "Build APK", press Run workflow.
4. After about 5 to 10 minutes open the finished run and download "app-debug-apk" (a zip containing app-debug.apk).
