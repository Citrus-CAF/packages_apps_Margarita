package com.citrus.theme

import com.citrus.theme.BuildConfig.SUPPORTS_THIRD_PARTY_THEME_SYSTEMS

object Constants {
    // Simple AntiPiracy Configuration
    const val PIRACY_CHECK = false
    // Play Store AntiPiracy LVL configurations (Relies on PIRACY_CHECK)
    const internal val BASE_64_LICENSE_KEY = ""
    const internal val APK_SIGNATURE_PRODUCTION = ""
    // AntiPiracy Library Configurations (Relies on PIRACY_CHECK)
    const internal val ENFORCE_INTERNET_CHECK = false
    const internal val ENFORCE_GOOGLE_PLAY_INSTALL = false
    const internal val ENFORCE_AMAZON_APP_STORE_INSTALL = false

    // Theme ready Google apps checker
    const internal val THEME_READY_GOOGLE_APPS = false
    // Dynamic filter that only works on Substratum 627+
    // WARNING: Only enable if you are sure you want certification status to pass on Substratum
    //          before launching the theme, or else it will throw an unauthorized toast!
    const internal val SUBSTRATUM_FILTER_CHECK = false

    // Miscellaneous Checks
    const val ENFORCE_MINIMUM_SUBSTRATUM_VERSION = true
    const val MINIMUM_SUBSTRATUM_VERSION = 712 // 510 is the final MM build
    const val ENABLE_KNOWN_THIRD_PARTY_THEME_MANAGERS = SUPPORTS_THIRD_PARTY_THEME_SYSTEMS

    // Theme Ready Packages by Team Blacked Out
    val THEME_READY_PACKAGES = arrayOf(
            "com.google.android.gm",
            "com.google.android.googlequicksearchbox",
            "com.android.vending",
            "com.google.android.apps.plus",
            "com.google.android.talk",
            "com.google.android.youtube",
            "com.google.android.inputmethod.latin"
    )

    // Blacklisted APKs to prevent theme launching, these include simple regex formatting, without
    // full regex formatting (e.g. com.android. will block everything that starts with com.android.)
    const val ENABLE_BLACKLISTED_APPLICATIONS = false
    val BLACKLISTED_APPLICATIONS = arrayOf(
            "com.android.vending.billing.InAppBillingService.LOCK",
            "com.android.vending.billing.InAppBillingService.LACK",
            "cc.madkite.freedom",
            "zone.jasi2169.uretpatcher",
            "uret.jasi2169.patcher",
            "com.dimonvideo.luckypatcher",
            "com.chelpus.lackypatch",
            "com.forpda.lp",
            "com.android.vending.billing.InAppBillingService.LUCK",
            "com.android.protips",
            "com.android.vending.billing.InAppBillingService.CLON",
            "com.android.vendinc"
    )

    // List of other theme systems that are officially unsupported by the team, but fully supported
    // by their corresponding organizations
    val OTHER_THEME_SYSTEMS = arrayOf(
            "com.slimroms.thememanager",
            "com.slimroms.omsbackend"
    )
}