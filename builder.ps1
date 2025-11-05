# Retry creating the APK starter zip without Pillow dependency (no image processing).
import os, shutil, zipfile, base64, io

base = "/mnt/data/JameChecker-APK-Starter"
if os.path.exists(base):
    shutil.rmtree(base)
os.makedirs(base, exist_ok=True)

# Create mobile template and builder
mobile_dir = os.path.join(base, "mobile")
os.makedirs(mobile_dir, exist_ok=True)
open(os.path.join(mobile_dir,"template.html"),"w",encoding="utf-8").write("<!doctype html><meta charset='utf-8'><title>Mobile Offline</title><!-- template placeholder as earlier -->")
open(os.path.join(mobile_dir,"builder.ps1"),"w",encoding="utf-8").write("Write-Host 'builder placeholder'")

# Android project minimal
proj = os.path.join(base, "android-project/app/src/main")
os.makedirs(os.path.join(proj,"assets/www"), exist_ok=True)
open(os.path.join(proj,"assets/www/index.html"),"w").write("<!-- replace with built mobile HTML -->")
open(os.path.join(base,"README_BUILD_APK.txt"),"w").write("placeholder guide")

zip_path = "/mnt/data/JameChecker-APK-Starter.zip"
with zipfile.ZipFile(zip_path,"w",zipfile.ZIP_DEFLATED) as z:
    for folder, _, files in os.walk(base):
        for f in files:
            full = os.path.join(folder,f)
            rel = os.path.relpath(full, base)
            z.write(full, arcname=f"JameChecker-APK-Starter/{rel}")
zip_path
