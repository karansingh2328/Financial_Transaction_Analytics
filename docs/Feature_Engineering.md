# Feature Engineering

## Overview

Additional analytical features were created from the cleaned dataset to support customer behavior analysis, transaction-pattern analysis, seasonal analysis, geographic analysis, and fraud analysis.

These features were created without changing the original transaction-level information.

## Engineered Features

### 1. `transaction_year`

**Source:** `transaction_datetime`

Extracts the transaction year.

**Business Purpose:**

- Analyze annual transaction trends
- Compare yearly transaction activity
- Analyze annual fraud patterns

### 2. `transaction_month`

**Source:** `transaction_datetime`

Extracts the transaction month as a numeric value from 1 to 12.

**Business Purpose:**

- Analyze monthly transaction activity
- Identify seasonal patterns
- Compare monthly transaction value

### 3. `transaction_month_name`

**Source:** `transaction_datetime`

Extracts the month name.

**Business Purpose:**

- Improve dashboard readability
- Make seasonal patterns easier to interpret

### 4. `transaction_day`

**Source:** `transaction_datetime`

Extracts the calendar day of the month.

**Business Purpose:**

- Analyze transaction behavior across different days of the month
- Identify potential month-start or month-end patterns

### 5. `transaction_day_name`

**Source:** `transaction_datetime`

Extracts the day of the week.

**Business Purpose:**

- Compare weekday and weekend behavior
- Identify the busiest transaction days

### 6. `transaction_hour`

**Source:** `transaction_datetime`

Extracts the transaction hour from 0 to 23.

**Business Purpose:**

- Identify peak transaction hours
- Analyze time-based transaction behavior
- Support time-based fraud analysis

### 7. `time_of_day`

**Source:** `transaction_hour`

Groups transaction hours into:

- Morning
- Afternoon
- Evening
- Night

**Business Purpose:**

- Simplify time-based analysis
- Compare customer activity across periods of the day
- Support time-based marketing and fraud analysis

### 8. `weekend`

**Source:** `transaction_day_name`

Classifies transactions as:

- Weekday
- Weekend

**Business Purpose:**

- Compare weekday and weekend transaction behavior
- Support marketing and operational planning

### 9. `customer_age`

**Source:** Transaction Date and Date of Birth

Calculates the customer's age at the time of the transaction.

**Business Purpose:**

- Analyze spending behavior by age
- Support customer segmentation
- Identify differences in transaction behavior across age groups

### 10. `customer_age_group`

**Source:** `customer_age`

Groups customers into predefined age ranges:

- Under 18
- 18–35
- 35–50
- 50–65
- 65–100

**Business Purpose:**

- Compare transaction behavior across age groups
- Identify high-value customer groups
- Support targeted marketing analysis

### 11. `transaction_amount_group`

**Source:** `transaction_amount`

Groups transactions into:

- Low
- Medium
- High
- Very High

**Business Purpose:**

- Analyze transaction-value distribution
- Identify high-value transaction patterns
- Compare transaction behavior by value level

### 12. `city_population_group`

**Source:** `city_population`

Groups customer cities according to population size.

**Business Purpose:**

- Compare transaction behavior across different city sizes
- Analyze geographic spending patterns
- Support location-based analysis

## Summary

**Total Engineered Features:** 12

The engineered features support:

- Customer segmentation
- Time-based analysis
- Transaction-value analysis
- Geographic analysis
- Fraud analysis
- Dashboard reporting
