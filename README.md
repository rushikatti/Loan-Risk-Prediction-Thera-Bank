# 📊 Loan Risk Prediction -- Thera Bank Case Study

## ✅ Project Overview

This project is a **Loan Portfolio Analysis & Risk Prediction
Dashboard** built in **Power BI**. It aims to help the bank analyze
customer profiles, loan approvals, and identify high-risk customers
based on a predictive model. The dashboard offers a comprehensive view
of key insights for decision-makers and supports data-driven strategies.

## 📚 Project Pages

### 1️⃣ Overview Dashboard

-   🚀 High-level business summary of loan approvals\
-   📊 KPIs:
    -   Total Customers\
    -   Loan Approval Rate\
    -   High Risk Customer %\
    -   Average Income of Loan Customers\
-   🎯 Visuals:
    -   Donut Chart (Loan Status % Yes/No)\
    -   Stacked Bar Chart (Loan Approval by Education Level)\
    -   Bar Chart (Loan Approval by CD Account)\
    -   Interactive Slicers (Education Level, Risk Tier, Online Banking)

### 2️⃣ Risk Analysis

-   ⚡ KPIs:
    -   Low Risk Count\
    -   Medium Risk Count\
    -   High Risk Count\
-   📊 Visuals:
    -   Stacked Column Chart (Risk Tier vs Loan Status)\
    -   Map Visual (Customer distribution by location)\
    -   Table (Customer ID, Probability, Risk Tier, Personal Loan)\
    -   Scatter Plot (Income vs Probability)

### 3️⃣ Customer Segmentation

-   🌳 Tree Map (Segmentation by Family Size)\
-   📊 Bar Chart (Approval Rate by Age Group -- Age Group column created
    using DAX)\
-   ✅ Slicer Filters (CD Account, Online, Credit Card)

### 4️⃣ Model Validation & Results

-   🎯 Gauge Chart (Model Accuracy manually entered from Python result)\
-   📋 Table (Static table with Precision, Recall, F1-Score)\
-   🔲 Matrix Table (Confusion Matrix: Actual vs Predicted Loan
    Approval)\
-   📈 Line Chart (Probability Distribution vs Number of Customers)

## 💡 Key Insights

-   Majority of loan approvals are concentrated among customers with
    higher education levels and stable incomes.\
-   CD Account holders are more likely to be approved.\
-   Online banking and mortgage have limited influence on loan
    approvals.\
-   High-risk customers are a small percentage but important for
    targeted management.

## ⚡ Tools & Technologies

-   Power BI Desktop (for dashboards)\
-   Python (for model training, evaluation, and predictions)\
-   Dataset: Bank customer data with demographics, accounts, and
    personal loan status

## 📁 How to Use

1.  Open the `.pbix` Power BI file in **Power BI Desktop**.\
2.  Use interactive slicers to explore different dimensions.\
3.  Navigate between pages using built-in navigation buttons.\
4.  Analyze insights and take action based on model predictions.

## 📊 Model Performance

-   Accuracy: 88%\
-   Weighted Avg F1-Score: 0.90\
-   Confusion Matrix shows minor misclassification rates.

## 📂 Folder Structure

-   `data/` → Input dataset CSV\
-   `model/` → Python scripts used for model training & prediction\
-   `dashboard.pbix` → Power BI dashboard file\
-   `README.md` → Project documentation

## 📝 Notes

-   Model metrics are static and should be updated after retraining.\
-   Visuals are fully interactive with slicers for deeper exploration.
