# E-Commerce Customer Behavior & Churn Prediction System

## Cognevance Level 3 – Advanced Big Data Analytics & Predictive Intelligence

This project focuses on analyzing e-commerce customer behavior and predicting customer churn using data analytics, SQL, machine learning, and business intelligence techniques.

The project uses the **UCI Online Retail II dataset** and follows an end-to-end analytics workflow from data preprocessing to predictive modeling and dashboard visualization.

---

## Project Objectives

- Analyze large-scale e-commerce transaction data
- Perform advanced data cleaning and preprocessing
- Create meaningful business and customer-level features
- Perform SQL-based business analytics
- Analyze customer purchasing behavior
- Segment customers using RFM analysis
- Build a machine-learning model for churn prediction
- Create an interactive Power BI dashboard
- Generate business insights and recommendations
- Support data-driven customer retention decisions

---

## Dataset

The project uses the **Online Retail II dataset** provided by the UCI Machine Learning Repository.

The dataset contains e-commerce transactions including:

- Invoice
- StockCode
- Description
- Quantity
- InvoiceDate
- Price
- Customer ID
- Country

Dataset source:

https://archive.ics.uci.edu/dataset/502/online%2Bretail

The original dataset is not stored in this repository because of its large file size.

---

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- SQLite
- SQL
- Scikit-learn
- Power BI
- Google Colab
- GitHub

---

## Project Architecture

```text
UCI Online Retail II Dataset
            |
            v
Data Collection
            |
            v
Data Cleaning & Preprocessing
            |
            v
Feature Engineering
            |
            +----------------+
            |                |
            v                v
      SQL Analytics      EDA & KPIs
            |                |
            +-------+--------+
                    |
                    v
          RFM Customer Segmentation
                    |
                    v
            Machine Learning
          Logistic Regression
                    |
                    v
           Churn Prediction
                    |
                    v
            Power BI Dashboard
                    |
                    v
       Business Insights & Recommendations
