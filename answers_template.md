# Lab L1 · answers.md (TH)

ชื่อ-สกุล: 
รหัสนักศึกษา: 
ลิงก์ repo: 

## Q1 · เครื่องมือ
คุณเจอปัญหาอะไรใน `flutter doctor` และใช้เครื่องมือหรือหน้าเอกสารทางการใดช่วยแก้? (ถ้าไม่มีปัญหา บอกว่าตรวจบรรทัดไหน และบรรทัดนั้นหมายถึงอะไร)


## Q2 · Reload
Likes เป็น 3 อยู่ `r` และ `R` ทำอะไรกับค่านี้ และเพราะอะไร?


## Q3 · โค้ดและ Git
ทำไม `_likes++` ต้องอยู่ใน `setState`? เลือก commit ของคุณหนึ่งครั้ง (วางข้อความ commit) แล้วบอกว่าเปลี่ยนอะไร


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
(ใช้ AI ไหม ตัวไหน ใช้ทำอะไร · ไม่ใช้ เขียนว่า “ไม่ใช้”)

---

# Lab L1 · answers.md (EN)

Name: 
Student ID: 
Repo link: 

## Q1 · Tools
What problem did `flutter doctor` show, and which tool or official docs page helped you fix it? (No problem: which line did you check, and what does it mean?)


## Q2 · Reload
Likes is 3. What do `r` and `R` do to this value, and why?


## Q3 · Code and Git
Why must `_likes++` be inside `setState`? Pick one of your commits (paste its message) and say what it changed.


## Test table

| Type | Input or action | Expected | Actual |
|---|---|---|---|
| Normal | open the app | title with ID, icon, name, “Likes: 0” |  |
| Normal | tap Like once | “Likes: 1” |  |
| Boundary | tap Like quickly 20 times | “Likes: 20”, no error |  |
| Boundary | rotate to landscape | still centred, no overflow |  |
| Reload | tap 3 times, then r, then R | after r: 3 · after R: 0 |  |
| Failure | close the emulator, then `flutter run` | “No supported devices connected.” |  |

## AI use
(Did you use AI? Which tool, and for what? If not, write “none”.)
