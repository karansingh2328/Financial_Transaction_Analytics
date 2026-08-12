# 💳 Financial Transaction Analytics

An end-to-end **financial transaction analytics** project focused on understanding **customer spending, transaction behavior, merchant performance, geographic patterns, time-based activity, and fraud risk**.

The project analyzes **1.29M+ transactions** from **January 2019 to June 2020** using **Python, SQL, Excel, and Power BI** to transform raw transaction data into business-focused insights.

---

## 🎯 Project Objectives

- Understand customer spending and transaction behavior
- Identify high-value customers and high-performing locations
- Analyze merchant and merchant-category performance
- Compare transaction activity across age groups and time periods
- Identify patterns associated with higher fraud risk
- Build an interactive Power BI dashboard for business reporting

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Python** | Data cleaning, feature engineering, EDA |
| **Pandas** | Data manipulation and aggregation |
| **Matplotlib & Seaborn** | Data visualization |
| **PostgreSQL** | Business-focused SQL analysis |
| **Excel** | Initial data exploration |
| **Power BI** | Interactive dashboard and reporting |
| **DAX** | KPI and analytical measures |
| **GitHub** | Documentation and version control |

---

## 🔄 Project Workflow

```text
Raw Data
   ↓
Data Exploration
   ↓
Data Cleaning
   ↓
Feature Engineering
   ↓
SQL Business Analysis
   ↓
Python EDA
   ↓
Power BI Dashboard
   ↓
Business Insights
```

---

## 📊 Power BI Dashboard

The Power BI dashboard brings the analysis together into an interactive reporting layer.

### Dashboard Covers

- Customer Analysis
- Merchant Analysis
- Transaction Performance
- Geographic Performance
- Fraud Analysis
- Time-based Trends

### 📥 Interactive Dashboard

The `.pbix` file is hosted on Google Drive because it exceeds GitHub's regular individual-file size limit.

[**Download Power BI Dashboard**](https://drive.google.com/file/d/1u9KNhbhtzORxIUBdNk9uUKTJAXr0DjO2/view?usp=drive_link)

> **Note:** Google Drive may display a message saying it cannot scan this large file for viruses. This is a standard warning for large files. The dashboard can still be downloaded normally.

### 🖼️ Dashboard Preview

### Overview

![Dashboard Overview](images/Dashboard%20Overview.png)

### Customer Analysis

![Customer Analysis](images/Customer%20Analysis.png)

### Merchant Analysis

![Merchant Analysis](images/Merchant%20Analysis.png)

### Fraud Analysis

![Fraud Analysis](images/Fraud%20Analysis.png)

Additional analytical screenshots are available in the [`images`](images/) folder.

---

## 💡 Key Business Insights

### Customer Spending

Customers aged **35–50** contribute the highest total transaction value at approximately **$30.36M**, while the **18–35** age group records the highest transaction frequency.

### High-Value Customers

**Jeffrey Smith** is the highest-spending customer with approximately **$300.32K** in total transaction value, highlighting an opportunity to identify and retain high-value customers through personalized engagement strategies.

### Merchant Performance

**Grocery POS** generates the highest total transaction value at approximately **$14.46M**, contributing **15.85%** of total transaction value.

**Gas & Transport** records the highest transaction frequency at approximately **131,659 transactions**, showing that transaction volume and transaction value are driven by different merchant categories.

### Geographic Performance

**Meridian** records the highest customer spending among the analyzed cities at approximately **$439.98K**, while **Texas** generates the highest state-level transaction value at approximately **$6.80M**.

Several cities, including **Brandon, Houston, Meridian, and Phoenix**, consistently perform strongly across the available years, highlighting stable markets for customer retention and growth strategies.

### Transaction Timing

Transaction activity and transaction value vary across different times of day, indicating opportunities for time-based customer engagement and promotional strategies.

### Fraud Risk

Fraud rates vary across **transaction hours, merchant categories, merchants, cities, states, and age groups**.

Late-night transactions show elevated observed fraud risk, with the highest hourly fraud rate reaching approximately **2.88% at 22:00**.

**Shopping Net** records the highest observed fraud rate among merchant categories at approximately **1.76%**, suggesting that certain transaction segments may benefit from stronger risk-based monitoring.

### Year-over-Year Performance

Transaction value declined during parts of **2020 compared with 2019**, while the average transaction amount remained relatively stable. This suggests that changes in **transaction volume or customer activity** may have contributed significantly to the decline.

---

## 🧹 Data Cleaning

The original dataset contained **1,296,674 rows and 24 columns**.

Key cleaning steps included:

- Converted transaction and date-of-birth fields to DateTime
- Created a combined customer name
- Renamed columns for business-friendly readability
- Removed the unnecessary `Unnamed: 0` column
- Removed `merch_zipcode` because **15.11%** of values were missing and latitude/longitude were available
- Checked for duplicate records
- Validated transaction amounts
- Validated transaction dates
- Validated fraud labels

### Final Dataset

- **Rows:** 1,296,674
- **Columns:** 21
- **Missing Values:** 0
- **Duplicate Records:** 0

Detailed documentation:

- [`Data Exploration`](docs/Data_Exploration.md)
- [`Data Cleaning Summary`](docs/Data_Cleaning_Summary.md)

---

## ⚙️ Feature Engineering

Twelve analytical features were created to support customer, transaction, geographic, temporal, and fraud analysis:

- `transaction_year`
- `transaction_month`
- `transaction_month_name`
- `transaction_day`
- `transaction_day_name`
- `transaction_hour`
- `time_of_day`
- `weekend`
- `customer_age`
- `customer_age_group`
- `transaction_amount_group`
- `city_population_group`

These features were used to analyze:

- Customer segmentation
- Transaction timing
- Spending behavior
- Geographic patterns
- Seasonal trends
- Fraud patterns
- Dashboard reporting

Detailed documentation:

[`Feature Engineering`](docs/Feature_Engineering.md)

---

## 🗄️ SQL Business Analysis

PostgreSQL was used to investigate business questions related to:

- Customer spending
- Customer transaction frequency
- Age-group behavior
- Merchant performance
- City and state performance
- Average transaction value
- Monthly growth
- Fraud patterns
- Merchant-level fraud risk
- Time-based fraud activity

### SQL Files

- [`Business Questions`](sql/business_questions.sql)
- [`Data Exploration`](sql/Data_Exploration.sql)
- [`Database Setup`](sql/Database_setup.sql)

---

## 🐍 Python EDA

Python was used for:

- Data cleaning
- Feature engineering
- Exploratory data analysis
- Customer analysis
- Merchant analysis
- Geographic analysis
- Transaction-value analysis
- Fraud analysis
- Time-based analysis
- Data visualization

### Main Notebooks

- [`Data Cleaning`](python/data_cleaning.ipynb)
- [`Feature Engineering`](python/feature_engineering.ipynb)
- [`EDA`](python/eda.ipynb)

---

## 📂 Dataset Access

The large dataset files are hosted on Google Drive because of GitHub's individual-file size limitation.

The repository contains documentation for each dataset stage:

- [`Raw Data`](data/raw_data/)
- [`Cleaned Data`](data/cleaned_data/)
- [`Feature-Engineered Data`](data/feature_engineered_data/)

> **Note:** Google Drive may display a warning saying it cannot scan very large files for viruses. This is a standard warning for large files and does not prevent normal downloading.

---

## 📚 Project Documentation

Detailed documentation is available in the [`docs`](docs/) folder:

- [`Business Goals`](docs/Business_Goals.md)
- [`Business Problems`](docs/Business_Problems.md)
- [`Business Questions`](docs/Business_Questions.md)
- [`Data Exploration`](docs/Data_Exploration.md)
- [`Data Cleaning Summary`](docs/Data_Cleaning_Summary.md)
- [`Feature Engineering`](docs/Feature_Engineering.md)

---

## 📁 Repository Structure

```text
Financial_Transaction_Analytics/
│
├── data/
│   ├── raw_data/
│   │   └── README.md
│   ├── cleaned_data/
│   │   └── README.md
│   └── feature_engineered_data/
│       └── README.md
│
├── docs/
│   ├── Business_Goals.md
│   ├── Business_Problems.md
│   ├── Business_Questions.md
│   ├── Data_Cleaning_Summary.md
│   ├── Data_Exploration.md
│   └── Feature_Engineering.md
│
├── images/
│   ├── Dashboard Overview.png
│   ├── Customer Analysis.png
│   ├── Merchant Analysis.png
│   ├── Fraud Analysis.png
│   └── ...
│
├── powerbi/
│   └── README.md
│
├── python/
│   ├── data_cleaning.ipynb
│   ├── feature_engineering.ipynb
│   └── eda.ipynb
│
├── sql/
│   ├── Database_setup.sql
│   ├── Data_Exploration.sql
│   └── business_questions.sql
│
├── .gitignore
└── README.md
```

---

## 🚀 Project Outcome

This project demonstrates a complete analytics workflow:

**Data Preparation → Feature Engineering → SQL Analysis → Python EDA → Power BI → Business Insights**

It demonstrates practical experience in using data to understand **customer behavior, transaction performance, merchant opportunities, geographic patterns, and fraud risk**.

---

## 👤 Author

### Karan Singh

Aspiring **Data Analyst / Data Scientist** with hands-on experience in:

**Python | SQL | Excel | Power BI | DAX | Pandas | PostgreSQL | Data Visualization**

- 🔗 [GitHub](https://github.com/karansingh2328)
- 🔗 [LinkedIn](https://www.linkedin.com/in/karansingh2328/)
- 📧 **Email:** karansingh.contact28@gmail.com








