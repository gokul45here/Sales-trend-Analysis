
# 🧹 Data Analyst Internship - Task 1: Data Cleaning and Preprocessing

## 📋 Objective
The goal of this task was to **clean and preprocess a raw Sales dataset** using **Excel**. 
This process involved handling missing values, removing duplicates, standardizing formats, and ensuring data consistency.

---

## 🧾 Dataset Overview
The dataset contains information about product sales, including:
- Order ID
- Customer Name
- Country
- Order Date
- Sales
- Profit
- Quantity

---

## 🧰 Cleaning Steps Performed

| Step | Description | Tool / Formula Used |
|------|--------------|----------------------|
| 1️⃣ | Identified and handled **missing values** in `Customer Name`, `Sales`, and `Profit` | Used Excel filters and average imputation |
| 2️⃣ | **Removed duplicate rows** based on `Order ID` | Excel → Data → Remove Duplicates |
| 3️⃣ | **Standardized text values** (Country names and customer names) | Excel functions like `PROPER()` and `UPPER()` |
| 4️⃣ | **Converted date formats** to `dd-mm-yyyy` | Format Cells → Date → Custom |
| 5️⃣ | **Renamed columns** to clean, lowercase names with underscores | Manual header edit |
| 6️⃣ | **Ensured numeric columns** were in correct data type | Checked number formats |

---

## 📈 Summary of Changes

- Removed **1 duplicate record**
- Handled **3 missing values** (Customer Name, Sales, Profit)
- Standardized country names (`usa`, `U.S.A.`, `united kingdom` → `USA`, `UK`)
- Formatted all dates as `dd-mm-yyyy`
- Renamed columns for consistency
- Verified data types for all numeric columns

---

## 📊 Files in This Repository

```
Sales_Data_Cleaning_Task/
│
├── Raw_Sales_Data.xlsx       # Original dataset (with issues)
├── Cleaned_Sales_Data.xlsx   # Cleaned dataset ready for analysis
├── README.md                 # This summary file
└── Screenshots/              # (Optional) Excel screenshots for documentation
```

---

## 💡 Key Learnings
- Data cleaning ensures accuracy, consistency, and usability of datasets.
- Excel provides strong data manipulation tools for non-programmatic data cleaning.
- Proper data preprocessing is essential before performing analysis or visualization.

---

### ✅ Prepared By:
**[Your Name]**  
Data Analyst Intern Candidate

