# Lab L1 · answers.md (TH)

ชื่อ-สกุล: นัฐกรณ์ ไพรพฤกษ์
รหัสนักศึกษา: 67104638
ลิงก์ repo: https://github.com/xZhyNeptune/lab01_profile

## Q1 · เครื่องมือ
คุณเจอปัญหาอะไรใน `flutter doctor` และใช้เครื่องมือหรือหน้าเอกสารทางการใดช่วยแก้? (ถ้าไม่มีปัญหา บอกว่าตรวจบรรทัดไหน และบรรทัดนั้นหมายถึงอะไร)
-ตอนรัน `flutter doctor` และ `flutter run` ช่วงแรกเจอปัญหาแจ้งเตือนเรื่อง Android licenses และพบข้อความ `No supported devices connected.` เนื่องจากยังไม่ได้เปิด Android Emulator

## Q2 · Reload
Likes เป็น 3 อยู่ `r` และ `R` ทำอะไรกับค่านี้ และเพราะอะไร?
-การกด `r` (Hot Reload): ค่า `Likes` จะยังคงเป็น `3` เหมือนเดิม เพราะ Hot Reload จะส่งเฉพาะโค้ดที่แก้ไขเข้าไปอัปเดตใน Dart VM แล้วสั่งวาด UI ใหม่ (rebuild) โดยยังคงรักษาสถานะ (State) เดิมของแอปในหน่วยความจำไว้
-การกด `R` (Hot Restart): ค่า `Likes` จะถูกรีเซ็ตกลับเป็น `0` เพราะ Hot Restart จะเริ่มรันแอปใหม่ตั้งแต่ฟังก์ชัน `main()` ทำให้ State ทั้งหมดถูกสร้างขึ้นใหม่ตามค่าเริ่มต้น (`int _likes = 0;`)

## Q3 · โค้ดและ Git
ทำไม `_likes++` ต้องอยู่ใน `setState`? เลือก commit ของคุณหนึ่งครั้ง (วางข้อความ commit) แล้วบอกว่าเปลี่ยนอะไร
-- การเพิ่มค่า `_likes++` จำเป็นต้องครอบด้วย `setState()` เพราะหากบวกค่าตัวแปรเฉย ๆ ข้อมูลจะเปลี่ยนแค่ในหน่วยความจำโดยที่หน้าจอไม่เปลี่ยนตาม การใช้ `setState()` จึงเป็นการแจ้งให้ Flutter รู้ว่า State เปลี่ยนแปลงแล้ว เพื่อให้เรียกเมธอด `build()` ใหม่และอัปเดตตัวเลขบนหน้าจอให้เป็นปัจจุบัน ส่วน commit ที่เลือกอธิบายคือ `Add like counter with setState` ซึ่งเป็นการเปลี่ยน `HomePage` จาก `StatelessWidget` เป็น `StatefulWidget` พร้อมสร้าง `_HomePageState` มาเก็บตัวแปร `_likes` ลบคำว่า `const` หน้า `Center` รวมถึงเพิ่มฟังก์ชัน `_like()` ข้อความ `Text('Likes: $_likes')` และปุ่ม `FilledButton` ลงใน `Column` เพื่อให้กดนับจำนวนได้จริงบนหน้าจอ

## ตารางทดสอบ
| ประเภท | input หรือการกระทำ | ผลที่คาดหวัง | ผลจริง |
|---|---|---|---|
| Normal | เปิดแอป | title มีรหัส ไอคอน ชื่อ “Likes: 0” |  |
| Normal | กด Like หนึ่งครั้ง | “Likes: 1” |  |
| Boundary | กด Like เร็ว ๆ 20 ครั้ง | “Likes: 20” ไม่มี error |  |
| Boundary | หมุนจอเป็นแนวนอน | ยังอยู่กลางจอ ไม่ overflow |  |
| Reload | กด 3 ครั้ง แล้ว r แล้ว R | หลัง r ได้ 3 · หลัง R ได้ 0 |  |
| Failure | ปิด emulator แล้ว `flutter run` | “No supported devices connected.” |  |

## การใช้ AI
ใช้ AI (Gemini) ช่วยอธิบายลำดับขั้นตอนการทำ Lab, ช่วยตรวจสอบและแก้ error ระหว่างการรัน `flutter run` และการทำ `git push`

---

# Lab L1 · answers.md (EN)

Name: Natthakon Phaiphuek
Student ID: 67104638
Repo link: https://github.com/xZhyNeptune/lab01_profile

## Q1 · Tools
What problem did `flutter doctor` show, and which tool or official docs page helped you fix it? (No problem: which line did you check, and what does it mean?)
- When running `flutter doctor` and `flutter run` at first, I encountered an Android licenses warning and the error `No supported devices connected.` because the Android Emulator was not running yet. I fixed these by running `flutter doctor --android-licenses`, launching the emulator with `flutter emulators --launch`, and checking `flutter devices` following the Lab T1 slides and `docs.flutter.dev`.

## Q2 · Reload
Likes is 3. What do `r` and `R` do to this value, and why?
- Pressing `r` (Hot Reload): `Likes` stays at `3` because Hot Reload only injects the updated code into the Dart VM and rebuilds the UI while preserving the current app state in memory.
- Pressing `R` (Hot Restart): `Likes` resets back to `0` because Hot Restart restarts the entire app from `main()`, recreating all state back to its initial values (`int _likes = 0;`).

## Q3 · Code and Git
Why must `_likes++` be inside `setState`? Pick one of your commits (paste its message) and say what it changed.
- Incrementing `_likes++` must be wrapped inside `setState()` because changing the variable alone only updates the value in memory without updating the screen. Calling `setState()` notifies Flutter that the widget's state has changed so it triggers `build()` again and displays the updated count. The commit I chose is `Add like counter with setState`, which converted `HomePage` from a `StatelessWidget` to a `StatefulWidget`, created `_HomePageState` to hold `_likes`, removed `const` from `Center`, and added the `_like()` method, `Text('Likes: $_likes')`, and a `FilledButton` inside the `Column` so the counter works on screen.

## Test table
| Type | Input or Action | Expected | Actual |
|---|---|---|---|
| Normal | Open the app | Title with ID, icon, name, “Likes: 0” |  |
| Normal | Tap Like once | “Likes: 1” |  |
| Boundary | Tap Like 20 times quickly | “Likes: 20”, no error |  |
| Boundary | Rotate screen to landscape | Still centered, no overflow |  |
| Reload | Tap 3 times, then `r`, then `R` | After `r`: 3 · After `R`: 0 |  |
| Failure | Close emulator, then `flutter run` | “No supported devices connected.” |  |

## AI use
Used AI (Gemini) to explain the step-by-step Lab workflow and help troubleshoot errors while running `flutter run` and `git push`.