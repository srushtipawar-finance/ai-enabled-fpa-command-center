# AI-Enabled FP&A Command Center  
### Revenue Forecasting | Budget Variance | P&L Scenario Planning | Executive Finance Dashboard

## Project Overview

This project builds an AI-enabled FP&A command center for a fintech-style subscription business. The goal is to help management analyze revenue performance, budget vs actual variance, profitability trends, churn, CAC, cash runway, and 12-month forecast scenarios.

The project combines financial modeling, SQL-based reporting, Python analytics, and Power BI dashboarding to turn operating data into executive-level finance insights.

---

## Business Context

NovaPay Analytics is a fictional fintech subscription company that provides payment and analytics tools to small and mid-sized retail businesses.

The company earns revenue through:

- Monthly subscription fees
- Transaction processing fees
- Premium analytics add-ons
- One-time setup and implementation fees

As the company grows, management needs better visibility into revenue quality, expense control, EBITDA performance, and cash runway.

Key question:

**Is the company growing profitably, and what actions should management take next?**

---

## Business Questions

This project answers:

1. Why did actual revenue beat or miss budget?
2. Which revenue stream is driving growth?
3. Which customer segments are most profitable?
4. How are churn and CAC affecting profitability?
5. Which expense categories are creating margin pressure?
6. What is the 12-month revenue and EBITDA forecast?
7. What happens under base, upside, and downside scenarios?
8. What actions can improve financial performance?

---

## Tools and Technologies

| Area | Tools Used |
|---|---|
| Financial Modeling | Excel |
| Data Analysis | SQL |
| Forecasting and Automation | Python |
| Dashboarding | Power BI |
| Executive Reporting | PowerPoint |
| Documentation | GitHub |

---

## Finance Concepts Applied

- Budget vs actual variance analysis
- Revenue forecasting
- P&L modeling
- Gross margin analysis
- EBITDA analysis
- Scenario planning
- Sensitivity analysis
- Cash runway analysis
- Churn and CAC analysis
- Recurring revenue analysis
- Revenue bridge
- EBITDA bridge
- KPI reporting
- Executive finance reporting

---

## Project Workflow

### 1. Data Preparation
Created a 24-month operating dataset for a fintech subscription business, including revenue, expenses, budget, customer metrics, and scenario assumptions.

### 2. SQL Reporting
Used SQL to analyze revenue streams, expense categories, customer segments, variance trends, churn, and profitability.

### 3. Excel FP&A Model
Built a monthly FP&A model covering revenue, expenses, gross margin, EBITDA, budget variance, scenario planning, and sensitivity analysis.

### 4. Python Analytics
Used Python for data cleaning, variance flagging, anomaly detection, revenue forecasting, EBITDA forecasting, and automated finance commentary.

### 5. Power BI Dashboard
Designed an executive dashboard to visualize KPIs, budget vs actual results, unit economics, profitability trends, forecasts, and management recommendations.

### 6. CFO-Style Reporting
Prepared an executive memo and CFO review deck to communicate insights, risks, and recommended actions.

---

## Dataset Structure

| Dataset | Description |
|---|---|
| Customers | Customer profile, industry, region, plan type, signup date, and status |
| Revenue | Monthly revenue by customer and revenue stream |
| Expenses | Budgeted and actual expenses by department, category, vendor, and cost type |
| Budget | Monthly budget assumptions for revenue, COGS, operating expenses, and EBITDA |
| KPI Metrics | Active customers, churn, CAC, ARPC, gross margin, and net revenue retention |
| Scenario Inputs | Base, upside, and downside assumptions for growth, churn, pricing, and costs |

---

## Dashboard Pages

1. **CFO Executive Summary**  
   Revenue, EBITDA, margin, churn, CAC, cash runway, and forecast performance.

2. **Budget vs Actual Analysis**  
   Revenue and expense variance by month, category, and department.

3. **Revenue and Unit Economics**  
   Revenue streams, customer growth, churn, CAC, ARPC, and net revenue retention.

4. **P&L and Margin Analysis**  
   Revenue, COGS, gross profit, operating expenses, EBITDA, and margin trends.

5. **Forecast and Scenario Planning**  
   12-month revenue and EBITDA forecast with base, upside, and downside scenarios.

6. **Management Recommendations**  
   Key risks, cost optimization opportunities, growth levers, and recommended actions.

---

## Deliverables

| Deliverable | Description |
|---|---|
| Excel FP&A Model | Monthly P&L, budget variance, scenarios, sensitivity analysis, revenue bridge, and EBITDA bridge |
| SQL Query File | Reporting queries for revenue, expenses, variance, churn, and profitability |
| Python Notebook | Data cleaning, variance flags, anomaly detection, forecasting, and automated commentary |
| Power BI Dashboard | Executive dashboard with KPI, variance, forecast, and scenario analysis |
| Executive Memo | One-page summary of insights and recommendations |
| CFO Review Deck | Management-style presentation summarizing findings |
| Screenshots | Dashboard and model screenshots for quick review |

---

## Repository Structure

```text
ai-enabled-fpa-command-center/

├── 01_Data/
│   ├── customers.csv
│   ├── revenue.csv
│   ├── expenses.csv
│   ├── budget.csv
│   ├── kpi_metrics.csv
│   └── scenario_inputs.csv
│
├── 02_Excel_Model/
│   └── NovaPay_FPA_Model.xlsx
│
├── 03_SQL/
│   └── NovaPay_SQL_Queries.sql
│
├── 04_Python/
│   └── NovaPay_Forecasting_Notebook.ipynb
│
├── 05_PowerBI/
│   └── NovaPay_PowerBI_Dashboard.pbix
│
├── 06_Reports/
│   └── NovaPay_Executive_Memo.pdf
│
├── 07_Presentation/
│   └── NovaPay_CFO_Review_Deck.pdf
│
├── 08_Screenshots/
│   └── dashboard_screenshots.png
│
└── README.md
