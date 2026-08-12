# Data Cleaning Summary

The following data-cleaning steps were performed before business analysis.

## Cleaning Steps

- Converted `trans_date_trans_time` from string to DateTime.
- Converted `dob` from string to DateTime.
- Created a new `customer_name` column by combining the customer's first and last names.
- Renamed columns where necessary to improve business readability.
- Reordered columns into a logical analytical structure.
- Removed the `Unnamed: 0` column because it represented an unnecessary index.
- Removed `merch_zipcode` because 15.11% of its values were missing and latitude/longitude information was available for geographic analysis.
- Verified that no duplicate records were present.
- Verified that transaction amounts contained no negative or zero values.
- Validated transaction dates and fraud labels.

## Final Dataset

| Metric            |     Value |
| ----------------- | --------: |
| Rows              | 1,296,674 |
| Columns           |        21 |
| Missing Values    |         0 |
| Duplicate Records |         0 |

The cleaned dataset was used for feature engineering and subsequent business analysis.
