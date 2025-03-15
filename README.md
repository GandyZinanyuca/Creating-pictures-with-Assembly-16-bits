# 🎨 Flexible 16-bit Assembly Image Generator (EMU8086)

🚀 **A highly flexible image generator using Assembly (EMU8086).**  
This program allows users to create images by adjusting pixel size (brush size) and organizing colors into layers.  

## 📌 Features  
✅ Define pixel size (brush size) to simplify drawing.  
✅ Organize colors into layers for easy modifications.  
✅ Avoids manual calculations—just adjust the brush and layers!  
✅ Runs on **EMU8086**, using BIOS interrupts for graphics.  

## 🔧 Installation & Execution  

### 1️⃣ Install **EMU8086**  
Download and install [EMU8086](http://www.emu8086.com/) on your system.  

### 2️⃣ Open the project  
- Launch **EMU8086**.  
- Open the `.asm` file in the editor.  
- Click **Compile** → **Emulate** → **Run**.  

## 🎨 How It Works  

### 🖌️ **Brush Size (Pixel Size)**  
Instead of handling individual pixels, you can define a **brush size**, which determines how large each painted section will be.  

### 🎭 **Layers**  
Images are divided into **color layers**, where each layer represents a different section of the image. To modify an image, just change:  
- The **brush size** (pixel grouping).  
- The number of pixels of each color.  

### 🛠️ Technical Details  
- Uses **INT 10h** for graphics rendering.  
- Supports **custom pixel sizes** for easy modification.  
- Organizes colors into **layers**, avoiding complex recalculations.  

## 📷 Preview  
![Sample Image](assets/pato.png)  

## 👩‍💻 Author  
✍️ Created by **Gandy Zinanyuca**  
📫 Contact: a20220256@pucp.edu.pe

## 📄 License  
This project is open-source under the MIT License.  
