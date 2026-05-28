# AI-Enabled FP&A Command Center

## NovaPay Financial Performance Dashboard

This project is an end-to-end FP&A and finance analytics project built for NovaPay, a fictional fintech company. The objective is to create a complete financial performance reporting system that helps track revenue, budget performance, expenses, profitability, customer metrics, and forecasting insights.

The project follows a full analytics workflow using Excel, SQL, Python, Power BI, and executive reporting. It starts with raw business data, builds a structured financial model, performs SQL-based analysis, supports forecasting through Python, and presents the final insights through an interactive Power BI dashboard, executive report, and presentation deck.

---

## Project Objective

The main objective of this project is to build a practical FP&A reporting solution that helps business leaders monitor financial performance and make better decisions.

The project focuses on:

- Tracking monthly revenue performance
- Comparing actual revenue against budget
- Reviewing EBITDA and profitability trends
- Analyzing expense categories
- Monitoring gross margin, churn rate, CAC, and active customers
- Identifying key revenue-contributing customers
- Creating an interactive Power BI dashboard for monthly reporting
- Preparing final business insights and recommendations

---

## Tools Used

| Tool | Purpose |
|---|---|
| Excel | Financial model, cleaned data tables, date table, and structured inputs |
| SQL | Business queries for revenue, budget, expenses, KPIs, and customer-level analysis |
| Python | Forecasting, trend analysis, and supporting analytics |
| Power BI | Interactive dashboard and data visualization |
| Word / PDF | Executive report and project documentation |
| PowerPoint | Final project presentation |

---

## Folder Structure

```text
AI_Enabled_FPA_Command_Center
│
├── 01_Data
│   ├── budget.csv
│   ├── customers.csv
│   ├── expenses.csv
│   ├── kpi_metrics.csv
│   ├── revenue.csv
│   └── scenario_inputs.csv
│
├── 02_Excel_Model
│   └── NovaPay_FPA_Model.xlsx
│
├── 03_SQL
│   └── NovaPay_SQL_Queries.sql
│
├── 04_Python
│   └── NovaPay_Forecasting_Notebook.ipynb
│
├── 05_PowerBI
│   └── NovaPay_Financial_Dashboard.pbix
│
├── 06_Reports
│   ├── NovaPay_Executive_Report.docx
│   ├── NovaPay_Executive_Report.pdf
│   └── Dashboard_Screenshots
│       ├── Full_Dashboard.png
│       ├── Jan24_Filter.png
│       ├── Mar24_Filter.png
│       └── Jun24_Filter.png
│
├── 07_Presentation
│   └── NovaPay_FPA_Dashboard_Presentation.pptx
│
├── 08_Screenshots
│   ├── Dashboard_Full_View.png
│   ├── Dashboard_Jan24_Filter.png
│   ├── Dashboard_Mar24_Filter.png
│   ├── Dashboard_Jun24_Filter.png
│   ├── Presentation_Key_Insights_Slide.png
│   ├── Presentation_Title_Slide.png
│   └── Report_Cover_Page.png
│
├── 09_ReadMe_Notes
│   └── README_Notes.txt
│
└── README.md
