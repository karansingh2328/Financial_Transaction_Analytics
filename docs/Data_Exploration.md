# Data Exploration

## Dataset Overview

| Attribute  | Details                                |
| ---------- | -------------------------------------- |
| Dataset    | Financial Transactions & Fraud Dataset |
| Source     | Kaggle                                 |
| Domain     | Financial Transaction Analytics        |
| Rows       | 1,296,674                              |
| Columns    | 24                                     |
| Start Date | 2019-01-01                             |
| End Date   | 2020-06-21                             |

## Data Types

| Data Type | Count |
| --------- | ----: |
| String    |    12 |
| Integer   |     6 |
| Float     |     6 |

## Missing Values

Missing values were identified only in the `merch_zipcode` column.

- **Missing Values:** 195,973
- **Missing Percentage:** 15.11%

All other columns contained no missing values.

Because merchant latitude and longitude were available, the missing ZIP codes were not required for the planned geographic analysis. The `merch_zipcode` column was therefore removed during data cleaning.

## Duplicate Records

- **Duplicate Records:** 0

No duplicate transactions were identified.

## Date Range

- **Start Date:** 2019-01-01
- **End Date:** 2020-06-21

## Pre-Cleaning Assessment

Before cleaning:

- The dataset contained 1,296,674 rows.
- The dataset contained 24 columns.
- Missing values were present in `merch_zipcode`.
- Date columns required conversion to DateTime format.
- `Unnamed: 0` was identified as an unnecessary index column.
- No duplicate records were found.
