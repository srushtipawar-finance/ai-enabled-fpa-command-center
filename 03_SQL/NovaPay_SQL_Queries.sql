/* 
AI-Enabled FP&A Command Center
NovaPay Analytics - SQL Financial Reporting Queries

Purpose:
This SQL file contains finance-focused reporting queries for revenue analysis,
budget vs actual variance, expense analysis, customer KPIs, profitability, and
scenario planning for a fictional fintech subscription business.
*/


/* 1. Monthly Revenue by Stream */

SELECT
    Month,
    SUM(Subscription_Revenue) AS subscription_revenue,
    SUM(Transaction_Fee_Revenue) AS transaction_fee_revenue,
    SUM(Premium_Analytics_Revenue) AS premium_analytics_revenue,
    SUM(Setup_Fee_Revenue) AS setup_fee_revenue,
    SUM(Total_Revenue) AS total_revenue
FROM revenue
GROUP BY Month
ORDER BY Month;


/* 2. Revenue Mix by Month */

SELECT
    Month,
    SUM(Subscription_Revenue) AS subscription_revenue,
    SUM(Transaction_Fee_Revenue) AS transaction_fee_revenue,
    SUM(Premium_Analytics_Revenue) AS premium_analytics_revenue,
    SUM(Setup_Fee_Revenue) AS setup_fee_revenue,
    SUM(Total_Revenue) AS total_revenue,
    ROUND(SUM(Subscription_Revenue) * 1.0 / SUM(Total_Revenue), 4) AS subscription_revenue_mix,
    ROUND(SUM(Transaction_Fee_Revenue) * 1.0 / SUM(Total_Revenue), 4) AS transaction_fee_revenue_mix,
    ROUND(SUM(Premium_Analytics_Revenue) * 1.0 / SUM(Total_Revenue), 4) AS premium_revenue_mix,
    ROUND(SUM(Setup_Fee_Revenue) * 1.0 / SUM(Total_Revenue), 4) AS setup_fee_revenue_mix
FROM revenue
GROUP BY Month
ORDER BY Month;


/* 3. Top Customers by Total Revenue */

SELECT
    Customer_ID,
    SUM(Total_Revenue) AS total_revenue
FROM revenue
GROUP BY Customer_ID
ORDER BY total_revenue DESC;


/* 4. Monthly Expense Variance by Department */

SELECT
    Month,
    Department,
    SUM(Budget_Expense) AS budget_expense,
    SUM(Actual_Expense) AS actual_expense,
    SUM(Actual_Expense) - SUM(Budget_Expense) AS expense_variance,
    ROUND((SUM(Actual_Expense) - SUM(Budget_Expense)) * 1.0 / SUM(Budget_Expense), 4) AS expense_variance_pct
FROM expenses
GROUP BY Month, Department
ORDER BY Month, Department;


/* 5. Expense Overrun Analysis */

SELECT
    Month,
    Department,
    Expense_Category,
    Vendor,
    Budget_Expense,
    Actual_Expense,
    Actual_Expense - Budget_Expense AS expense_variance,
    ROUND((Actual_Expense - Budget_Expense) * 1.0 / Budget_Expense, 4) AS expense_variance_pct
FROM expenses
WHERE Actual_Expense > Budget_Expense
ORDER BY expense_variance DESC;


/* 6. Budget vs Actual Revenue Variance */

SELECT
    b.Month,
    b.Budget_Total_Revenue,
    r.Actual_Total_Revenue,
    r.Actual_Total_Revenue - b.Budget_Total_Revenue AS revenue_variance,
    ROUND((r.Actual_Total_Revenue - b.Budget_Total_Revenue) * 1.0 / b.Budget_Total_Revenue, 4) AS revenue_variance_pct
FROM budget b
JOIN (
    SELECT
        Month,
        SUM(Total_Revenue) AS Actual_Total_Revenue
    FROM revenue
    GROUP BY Month
) r
ON b.Month = r.Month
ORDER BY b.Month;


/* 7. Monthly Gross Profit and Gross Margin */

SELECT
    b.Month,
    r.Actual_Total_Revenue,
    b.Budget_COGS,
    r.Actual_Total_Revenue - b.Budget_COGS AS gross_profit,
    ROUND((r.Actual_Total_Revenue - b.Budget_COGS) * 1.0 / r.Actual_Total_Revenue, 4) AS gross_margin
FROM budget b
JOIN (
    SELECT
        Month,
        SUM(Total_Revenue) AS Actual_Total_Revenue
    FROM revenue
    GROUP BY Month
) r
ON b.Month = r.Month
ORDER BY b.Month;


/* 8. Monthly EBITDA Estimate */

SELECT
    r.Month,
    r.Actual_Total_Revenue,
    b.Budget_COGS,
    e.Actual_Operating_Expenses,
    r.Actual_Total_Revenue - b.Budget_COGS - e.Actual_Operating_Expenses AS estimated_ebitda,
    ROUND((r.Actual_Total_Revenue - b.Budget_COGS - e.Actual_Operating_Expenses) * 1.0 / r.Actual_Total_Revenue, 4) AS ebitda_margin
FROM (
    SELECT
        Month,
        SUM(Total_Revenue) AS Actual_Total_Revenue
    FROM revenue
    GROUP BY Month
) r
JOIN budget b
    ON r.Month = b.Month
JOIN (
    SELECT
        Month,
        SUM(Actual_Expense) AS Actual_Operating_Expenses
    FROM expenses
    GROUP BY Month
) e
    ON r.Month = e.Month
ORDER BY r.Month;


/* 9. Customer KPI Trend */

SELECT
    Month,
    Active_Customers,
    New_Customers,
    Lost_Customers,
    Churn_Rate,
    Average_Revenue_Per_Customer,
    CAC,
    Gross_Margin,
    Net_Revenue_Retention
FROM kpi_metrics
ORDER BY Month;


/* 10. Churn and CAC Risk Review */

SELECT
    Month,
    Active_Customers,
    Lost_Customers,
    Churn_Rate,
    CAC,
    Net_Revenue_Retention,
    CASE
        WHEN Churn_Rate >= 0.08 THEN 'High Churn Risk'
        WHEN Churn_Rate >= 0.04 THEN 'Moderate Churn Risk'
        ELSE 'Low Churn Risk'
    END AS churn_risk_flag,
    CASE
        WHEN CAC >= 10000 THEN 'High CAC'
        WHEN CAC >= 5000 THEN 'Moderate CAC'
        ELSE 'Low CAC'
    END AS cac_risk_flag
FROM kpi_metrics
ORDER BY Month;


/* 11. Scenario Input Review */

SELECT
    Scenario,
    Customer_Growth_Rate,
    Churn_Rate,
    Transaction_Volume_Growth,
    Pricing_Increase,
    CAC_Change,
    Payroll_Inflation,
    Marketing_Spend_Change
FROM scenario_inputs
ORDER BY Scenario;


/* 12. Executive KPI Summary */

SELECT
    r.Month,
    r.Actual_Total_Revenue,
    e.Actual_Operating_Expenses,
    k.Active_Customers,
    k.Churn_Rate,
    k.CAC,
    k.Gross_Margin,
    k.Net_Revenue_Retention
FROM (
    SELECT
        Month,
        SUM(Total_Revenue) AS Actual_Total_Revenue
    FROM revenue
    GROUP BY Month
) r
JOIN (
    SELECT
        Month,
        SUM(Actual_Expense) AS Actual_Operating_Expenses
    FROM expenses
    GROUP BY Month
) e
    ON r.Month = e.Month
JOIN kpi_metrics k
    ON r.Month = k.Month
ORDER BY r.Month;