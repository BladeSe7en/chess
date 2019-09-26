%  # This will ignore warnings for missing translations and some other wanrinings 
% -ignorewarnings

% # Keeping line numbers for easy error tracking :

% -keepattributes SourceFile,LineNumberTable

% # Support ShareActionProvider  will not work without this line :
% -keep class android.support.v7.widget.ShareActionProvider { *; }

% # Flurry Crashlytics

% -keep class com.flurry.** { *; }
% -dontwarn com.flurry.**
% -keepattributes *Annotation*,EnclosingMethod
% -keepclasseswithmembers class * {
% public <init>(android.content.Context, android.util.AttributeSet, int); }

% # Preserve Flurry mediation classes for DFP/AdMob Ads ­keep public class com.google.ads.mediation.flurry.**

% # Google Play Services library
% -keep class * extends java.util.ListResourceBundle {
% protected Object[][] getContents(); }

% -keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
% public static final *** NULL; }
% -keepnames @com.google.android.gms.common.annotation.KeepName class *
% -keepclassmembernames class * {
% @com.google.android.gms.common.annotation.KeepName *; }
% -keepnames class * implements android.os.Parcelable { public static final ** CREATOR;
% }

% -keepattributes InnerClasses, EnclosingMethod
% -keep class com.ironsource.mobilcore.**{ *; }
% -dontwarn org.apache.http.**
% -dontwarn android.net.http.AndroidHttpClient
% -dontwarn android.app.Notification

% -keep   class   com.dianxinos.DXStatService.stat.TokenManager   {
% public  static  java.lang.String getToken(android.content.Context);
% }

% -keep   public  class   *   extends android.content.BroadcastReceiver
% -keep   public  class   *   extends android.app.Activity
% -keep   public  class   *   extends android.content.ContentProvider

# These clases contain references to cordova webView
-keep class com.ionicframework.cordova.webview.** {*; }
-keep class com.ionicframework.cordova.webview.*?