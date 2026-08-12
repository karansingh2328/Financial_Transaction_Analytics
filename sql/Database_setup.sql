CREATE TABLE transaction_data (

    transaction_datetime      TIMESTAMP,
    transaction_id            TEXT,
    transaction_unix_time     BIGINT,
    credit_card_number        BIGINT,

    customer_name             TEXT,
    customer_gender           TEXT,
    date_of_birth             TIMESTAMP,
    customer_job              TEXT,

    customer_street           TEXT,
    customer_city             TEXT,
    customer_state            TEXT,
    customer_zip              BIGINT,

    customer_latitude         DOUBLE PRECISION,
    customer_longitude        DOUBLE PRECISION,
    city_population           BIGINT,

    merchant_name             TEXT,
    merchant_category         TEXT,
    merchant_latitude         DOUBLE PRECISION,
    merchant_longitude        DOUBLE PRECISION,

    transaction_amount        DOUBLE PRECISION,
    fraud_flag                BOOLEAN,

    transaction_year          INTEGER,
    transaction_month         INTEGER,
    transaction_month_name    TEXT,

    transaction_day           INTEGER,
    transaction_day_name      TEXT,

    transaction_hour          INTEGER,
    time_of_day               TEXT,
    weekend                   TEXT,

    customer_age              INTEGER,
    customer_age_group        TEXT,

    transaction_amount_group  TEXT,
    city_population_group     TEXT
);

select * from transaction_data
limit 10;
