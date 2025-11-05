# 🧠 JameChecker – Offline OCR Tag Checker  

JameChecker is a mobile-ready offline OCR tool that detects and highlights duplicate tags from images.  
It runs entirely offline using [Tesseract.js](https://github.com/naptha/tesseract.js) and does not require an internet connection.  
Perfect for field use where network access is limited.

---

## 🚀 Features
- ✅ Offline OCR (works without internet)  
- 🎯 Highlight duplicate tags on images  
- ⚙️ Adjustable image scale and threshold  
- 🧾 Export results to CSV or PNG  
- 📱 Mobile-friendly UI (React + Vite build)  
- 🔒 No data sent to servers  

---

## 🧩 Quick Start (on PC)
1. Download the file **`JameChecker_Offline_Mobile.html`**  
2. Open it with any modern browser (Chrome / Edge / Brave)  
3. Click “Select Image” and choose a photo of your tags  
4. Wait a moment → the duplicates will be highlighted instantly  

---

## 📲 Convert to APK (Easy Method)
You can turn this HTML app into a fully offline Android APK in minutes:  

### Option 1 – via [Convertify](https://convertify.app)
1. Platform: `Android`  
2. App Name: `JameChecker`  
3. Website URL:  
    `https://freeforfreepro.github.io/JameChecker/JameChecker_Offline_Mobile.html`  
4. Enter your email and click **Convert**  
✅ Convertify will email you `JameChecker.apk`

### Option 2 – Offline via [Web2Apk](https://web2apk.com)
1. Upload `JameChecker_Offline_Mobile.html` directly  
2. Set Orientation = Portrait  
3. Turn off Internet Permission  
4. Upload the red-black “JC” logo as the app icon  
5. Click **Build APK** → ready to install!  

---

## 🛠 Development
This project uses React and Tesseract.js as core libraries.  
Source can be rebuilt with Vite or any static bundler.

```bash
npm install
npm run build
