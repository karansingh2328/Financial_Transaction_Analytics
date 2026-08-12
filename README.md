# 💳 Financial Transaction Analytics

An end-to-end financial transaction analytics project focused on understanding **customer spending behavior, transaction activity, merchant performance, geographic patterns, time-based trends, and fraud risk**.

The project combines **Python, SQL, Excel, and Power BI** to transform raw financial transaction data into business-focused insights and interactive reporting.

---

## 📂 Dataset

| Attribute | Details |
|---|---|
| **Source** | Kaggle |
| **Domain** | Financial Transactions |
| **Rows** | 1,296,674 |
| **Original Columns** | 24 |
| **Analysis Period** | January 2019 – June 2020 |

The dataset contains information related to:

- Customers
- Merchants
- Merchant categories
- Transaction amounts
- Customer age
- Location
- Transaction date and time
- Fraud labels
- Geographic attributes

### Dataset Files

The actual datasets are hosted on Google Drive because some files exceed GitHub's regular individual-file size limit.

### 📁 Raw Data

Original dataset used for the project.

> **Note:** Google Drive may display a warning stating that it cannot scan this large file for viruses. This is a standard Google Drive message for large files. The file can still be downloaded normally.

[**Download Raw Data**](https://drive.google.com/file/d/1NcEsWK-u5WXoEyC6srQ73oS6bEHwG74i/view?usp=drive_link)

### 📁 Cleaned Data

Dataset after data cleaning, validation, column restructuring, and removal of unnecessary fields.

> **Note:** Google Drive may display a warning stating that it cannot scan this large file for viruses. This is a standard Google Drive message for large files. The file can still be downloaded normally.

[**Download Cleaned Data**](https://drive.google.com/file/d/15yiUP6dDEl5z0dptTlt_sBpUdWGb2eA6/view?usp=drive_link)

### 📁 Feature-Engineered Data

Final analytical dataset containing engineered features used for customer, transaction, geographic, time-based, and fraud analysis.

> **Note:** Google Drive may display a warning stating that it cannot scan this large file for viruses. This is a standard Google Drive message for large files. The file can still be downloaded normally.

[**Download Feature-Engineered Data**](https://drive.google.com/file/d/1hjuhL_HFuJVuc93oxo5dTiKd04AZMxuO/view?usp=drive_link)

More information about each dataset stage is available in the [`data`](data/) folder.

---

## 🧹 Data Cleaning

The following data-cleaning steps were performed:

- Converted transaction and date-of-birth columns to DateTime format
- Created a combined customer name
- Renamed columns for business-friendly readability
- Removed the unnecessary `Unnamed: 0` column
- Removed `merch_zipcode` because of 15.11% missing values and the availability of latitude/longitude
- Checked for duplicate records
- Validated transaction amounts
- Validated transaction dates
- Validated fraud labels

### Final Dataset

| Metric | Value |
|---|---:|
| **Rows** | 1,296,674 |
| **Columns** | 21 |
| **Missing Values** | 0 |
| **Duplicate Records** | 0 |

Detailed documentation:

- [`Data Exploration`](docs/Data_Exploration.md)
- [`Data Cleaning Summary`](docs/Data_Cleaning_Summary.md)

---

## ⚙️ Feature Engineering

Twelve additional features were created to support business analysis:

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

These features helped analyze:

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

## 🗄️ SQL Analysis

PostgreSQL was used to answer business-focused questions related to:

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

## 📊 Power BI Dashboard

The Power BI dashboard brings the analysis together into interactive business reporting.

The dashboard covers:

- Customer performance
- Merchant performance
- Transaction activity
- Geographic performance
- Fraud risk
- Monthly trends
- Transaction-value patterns

### 📥 Dashboard File

The Power BI `.pbix` file is hosted on Google Drive because its file size exceeds GitHub's individual file-size limit.

> **Note:** Google Drive may display a warning stating that it cannot scan this large file for viruses. This is a standard Google Drive message for large files. The file can still be downloaded normally.


[**Download the Power BI Dashboard**](https://drive.google.com/file/d/1u9KNhbhtzORxIUBdNk9uUKTJAXr0DjO2/view?usp=drive_link)

### 🖼️ Dashboard Preview

### Overview

![Dashboard Overview](images/Dashboard%20Overview.png)

### Customer Analysis

![Customer Analysis](images/Customer%20Analysis.png)

### Merchant Analysis

![Merchant Analysis](images/Merchant%20Analysis.png)

### Fraud Analysis

![Fraud Analysis](images/Fraud%20Analysis.png)

Additional dashboard screenshots are available in the [`images`](images/) folder.

---

## 💡 Key Business Insights

### Customer Spending

A small group of high-value customers contributes significantly more transaction value than the average customer, making them potential VIP customers for retention and personalized engagement strategies.

### Customer Age

Customers aged **35–50** contribute the highest total transaction value, while the **18–35** age group records the highest transaction frequency. This indicates that different age groups contribute through different forms of customer engagement.

### Merchant Performance

**Grocery POS** generates the highest total transaction value, while **Gas Transport** records the highest transaction frequency. This indicates that transaction value and transaction volume are driven by different merchant categories.

### Geographic Performance

Cities such as **Meridian, Houston, Brandon, and Phoenix** consistently perform strongly in spending analysis, highlighting stable markets that may benefit from focused customer-retention and growth strategies.

### Transaction Timing

Transaction activity and spending vary across different times of day, with **night-time transactions contributing significant transaction value**.

### Fraud Risk

Fraud rates vary across merchant categories, locations, customer age groups, and transaction hours. **Late-night hours, particularly 22:00 and 23:00, show some of the highest observed fraud rates**, indicating the potential value of stronger time-based fraud monitoring.

### Year-over-Year Trend

Transaction value declined during parts of **2020 compared with 2019**, while average transaction value remained relatively stable. This suggests that changes in transaction volume or customer activity may have contributed significantly to the overall decline.

---

## 📚 Documentation

Detailed project documentation is available in the [`docs`](docs/) folder:

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

This project demonstrates an end-to-end analytics workflow in which raw financial transaction data was transformed into **clean analytical datasets, engineered features, business-focused SQL analysis, Python-based exploratory insights, and an interactive Power BI dashboard**.

The project provides a practical view of how data can be used to understand **customer behavior, transaction performance, market opportunities, and fraud risk**.

---

## 👤 Author

### Karan Singh

Aspiring **Data Analyst / Data Scientist** with hands-on experience in:

**Python | SQL | Excel | Power BI | DAX | Pandas | Data Visualization**

- 🔗 [GitHub](https://github.com/karansingh2328)
- 🔗 [LinkedIn](https://www.linkedin.com/in/karansingh2328/)
- 📧 **Email:** karansingh.contact28@gmail.com







