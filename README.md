# AI-Enabled FP&A Command Center  
### Revenue Forecasting | Budget Variance | P&L Scenario Planning | Executive Finance Dashboard

## Project Overview

This project builds an AI-enabled FP&A command center for a fintech-style subscription business. The goal is to create a finance system that helps management understand revenue performance, budget vs actual variance, profitability trends, customer churn, customer acquisition cost, cash runway, and future financial performance.

The project combines corporate finance, financial modeling, SQL-based reporting, Python analytics, and Power BI dashboarding to turn raw operating data into executive-level financial insights.

Instead of only analyzing historical financial statements, this project simulates how an FP&A team would support monthly business reviews, forecast planning, cost control, and strategic decision-making inside a growing fintech company.

---

## Business Context

NovaPay Analytics is a fictional fintech subscription company that provides payment and analytics tools to small and mid-sized retail businesses.

The company earns revenue through four main streams:

- Monthly subscription fees
- Transaction processing fees
- Premium analytics add-ons
- One-time setup and implementation fees

As the company grows, management needs better visibility into financial performance. Revenue is increasing, but churn, customer acquisition cost, cloud hosting costs, and department-level expenses are creating pressure on EBITDA and cash runway.

This project creates a finance command center to help answer the key question:

**Is the company growing profitably, and what actions should management take next?**

---

## Business Questions Answered

This project is designed to answer the following finance and business questions:

1. Why did actual revenue beat or miss budget?
2. Which revenue stream is driving growth?
3. Which customer segments are most profitable?
4. How are churn and customer acquisition cost affecting revenue quality?
5. Which expense categories are creating margin pressure?
6. What is the company’s EBITDA trend?
7. How much cash runway does the company have?
8. What is the 12-month revenue and EBITDA forecast?
9. What happens under base, upside, and downside scenarios?
10. What management actions can improve profitability and financial performance?

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

## Finance Concepts Covered

This project applies key FP&A and corporate finance concepts, including:

- Budget vs actual variance analysis
- Revenue forecasting
- P&L modeling
- Gross margin analysis
- EBITDA analysis
- Scenario planning
- Sensitivity analysis
- Cash runway analysis
- Customer churn analysis
- Customer acquisition cost analysis
- Recurring revenue analysis
- Revenue bridge
- EBITDA bridge
- KPI reporting
- Executive finance reporting

---

## Project Workflow

The project follows a real-world FP&A workflow:

### 1. Data Creation and Preparation
Created a 24-month operating dataset for a fintech subscription business, including revenue, expenses, budget, customer metrics, and scenario assumptions.

### 2. SQL-Based Financial Reporting
Used SQL to organize and analyze financial data across revenue streams, expense categories, customer segments, and monthly performance trends.

### 3. Excel FP&A Model
Built an Excel-based FP&A model covering revenue, expenses, gross margin, EBITDA, budget variance, scenario planning, and sensitivity analysis.

### 4. Python Forecasting and Automation
Used Python for data cleaning, variance flagging, anomaly detection, revenue forecasting, EBITDA forecasting, and automated finance commentary.

### 5. Power BI Executive Dashboard
Designed an interactive dashboard to visualize financial KPIs, budget vs actual results, profitability trends, forecast scenarios, and management recommendations.

### 6. CFO-Style Reporting
Prepared an executive summary and management review deck to communicate key insights, risks, and recommended actions.

---

## Dataset Structure

The project uses multiple connected datasets:

### Customers Table
Includes customer profile information such as customer ID, industry, region, company size, signup date, subscription plan, and customer status.

### Revenue Table
Tracks monthly revenue by customer and revenue stream, including subscription revenue, transaction fee revenue, premium analytics revenue, setup fee revenue, and total revenue.

### Expense Table
Tracks monthly budgeted and actual expenses by department, expense category, vendor, and cost type.

### Budget Table
Contains monthly budget assumptions for revenue, COGS, operating expenses, and EBITDA.

### KPI Metrics Table
Tracks active customers, new customers, lost customers, churn rate, average revenue per customer, CAC, gross margin, and net revenue retention.

### Scenario Inputs Table
Includes base, upside, and downside scenario assumptions for customer growth, churn, pricing, transaction volume, payroll inflation, and marketing spend.

---

## Key Analysis Areas

### Revenue Performance
Analyzes monthly revenue trends, revenue stream contribution, customer growth, recurring revenue behavior, and revenue variance against budget.

### Budget vs Actual Variance
Compares actual financial results against budget to identify favorable and unfavorable variances across revenue, COGS, operating expenses, and EBITDA.

### Unit Economics
Evaluates fintech SaaS-style metrics such as churn, CAC, average revenue per customer, gross margin, and net revenue retention.

### Profitability Analysis
Analyzes gross profit, operating expenses, EBITDA, EBITDA margin, and key cost drivers affecting profitability.

### Forecasting and Scenario Planning
Builds 12-month revenue and EBITDA forecasts under base, upside, and downside scenarios.

### Management Recommendations
Translates financial analysis into business recommendations focused on revenue growth, cost control, churn reduction, and margin improvement.

---

## Planned Dashboard Pages

The Power BI dashboard will include the following pages:

1. **CFO Executive Summary**  
   High-level view of revenue, EBITDA, margin, churn, CAC, cash runway, and forecast performance.

2. **Budget vs Actual Analysis**  
   Monthly comparison of actual results against budget, with variance dollars and variance percentages.

3. **Revenue and Unit Economics**  
   Revenue by stream, customer growth, churn, CAC, average revenue per customer, and net revenue retention.

4. **P&L and Margin Analysis**  
   Revenue, COGS, gross profit, operating expenses, EBITDA, and profitability trends.

5. **Forecast and Scenario Planning**  
   12-month revenue and EBITDA forecast with base, upside, and downside scenarios.

6. **Management Recommendations**  
   Key risks, cost optimization opportunities, growth levers, and recommended next actions.

---

## Planned Deliverables

| Deliverable | Description |
|---|---|
| Excel FP&A Model | Monthly P&L, budget variance, scenarios, sensitivity analysis, revenue bridge, and EBITDA bridge |
| SQL Query File | Financial reporting queries for revenue, expenses, variance, churn, and profitability |
| Python Notebook | Data cleaning, variance flags, anomaly detection, forecasting, and automated commentary |
| Power BI Dashboard | Executive finance dashboard with KPI and scenario analysis |
| Executive Memo | One-page summary of findings and recommendations |
| CFO Review Deck | Presentation-style summary for management review |
| Screenshots | Dashboard and model screenshots for quick recruiter review |

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
