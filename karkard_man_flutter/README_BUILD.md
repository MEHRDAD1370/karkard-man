# ساخت APK بدون نصب Flutter روی کامپیوتر

## روش پیشنهادی: GitHub Actions
1. یک حساب GitHub بسازید و وارد شوید.
2. یک Repository جدید بسازید.
3. محتویات این پوشه را داخل Repository آپلود کنید؛ فایل `pubspec.yaml` باید در ریشه Repository باشد.
4. از منوی **Actions**، workflow با نام **Build Android APK** را انتخاب کنید.
5. روی **Run workflow** بزنید.
6. پس از اتمام Build، وارد همان اجرای موفق شوید و از بخش **Artifacts** فایل `karkard-man-release-apk` را دانلود کنید.

این پروژه برای Android 9 (API 28) به بالا تنظیم شده است.

## روش جایگزین: Codemagic
فایل `codemagic.yaml` برای Build اندروید آماده است. Codemagic برای حساب شخصی در حال حاضر 500 دقیقه Build رایگان در ماه ارائه می‌کند.
