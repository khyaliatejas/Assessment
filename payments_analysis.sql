
-- Payment Status Analysis

-- 1. Count of payments by status
SELECT payment_status, COUNT(*) AS status_count
FROM payments
GROUP BY payment_status;

-- 2. Monthly breakdown of payment status
SELECT DATE_TRUNC('month', payment_date) AS payment_month,
       payment_status,
       COUNT(*) AS count_per_status
FROM payments
GROUP BY payment_month, payment_status
ORDER BY payment_month;

-- 3. Payment method comparison
SELECT payment_method,
       COUNT(*) AS total_transactions,
       SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) AS successful_payments,
       ROUND(SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) AS success_rate
FROM payments
GROUP BY payment_method;
