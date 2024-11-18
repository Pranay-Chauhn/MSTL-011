# **R Language Tutorial Repository**

Welcome to the **R Language Tutorial Repository**! This repository is designed to help beginners learn R programming with clear instructions and practical scripts. Below are the guidelines to set up R, use this repository effectively, and get the most out of the learning experience.

---

## **1. How to Install and Download R**

### **Step 1: Install R**
- Visit the official [CRAN R Project](https://cran.r-project.org/) website.
- Choose the appropriate version for your operating system (Windows, macOS, Linux).
- Follow the installation instructions provided on the website.

### **Step 2: Install RStudio (Optional but Recommended)**
- Download RStudio, a popular IDE for R, from [RStudio's official website](https://posit.co/download/rstudio-desktop/).
- Install it after downloading.

---

## **2. Setting Up Your Working Directory**

Setting a working directory ensures R knows where to save and read files.

1. **Create a Folder**  
   Create a dedicated folder for your R projects (e.g., `R_Projects`).

2. **Set the Directory**  
   Open RStudio or the R console and type:
   ```R
   setwd("C:/Path_to_Your_Folder")
   ```
   Replace `C:/Path_to_Your_Folder` with the actual path to your folder.
                  or 
   Navigate to Session → Set Working Directory → Choose Directory....
   Browse and select your desired folder.

4. **Check the Directory**  
   Confirm it’s set correctly:
   ```R
   getwd()
   ```

### **Tips for Directories**
- Always use forward slashes `/` in the path for compatibility.
- Avoid spaces or special characters in folder names.

---

## **3. Customizing Text Size and Background Color**

1. **Change Text Size**  
   - In RStudio, go to:  
     `Tools` → `Global Options` → `Appearance` → Adjust `Editor font size`.

2. **Change Background Color**  
   - In the same `Appearance` menu, select a theme (e.g., "Modern", "Cobalt").

---

## **4. Using Class Scripts**

### **Files in This Repository**
This repository includes scripts from the first four tutorial classes:
- `class1.R`
- `class2.R`
- `class3.R`

### **How to Use These Scripts**
1. **Download the Files**
   - Clone the repository or download the scripts as `.R` files.

2. **Open in RStudio**  
   Open the script files by navigating to:
   `File` → `Open File` → Select the `.R` file.

3. **Run the Code**  
   - Run the code line by line using `Ctrl + Enter` (Windows) or `Cmd + Enter` (Mac).
   - Do NOT copy-paste the code directly into the console, as it may cause indentation errors.

---

## **5. Additional Learning Resources**

- Watch our recommended [YouTube Tutorial Playlist](https://www.youtube.com/watch?v=oPjZK4Apgug&list=PLjVLYmrlmjGdmPrz0Lx7smkd0qIKHInOF) for a step-by-step walkthrough of the scripts and concepts.
- Refer to the official [R Documentation](https://www.rdocumentation.org/) for deeper understanding.

---

## **Important Notes**
1. Avoid directly copy-pasting code from scripts. Typing it out helps improve understanding.
2. Experiment with the code after understanding the concepts to solidify your learning.
3. Feel free to raise an issue or pull request for questions or suggestions.

Happy coding and learning R!
