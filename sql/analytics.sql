-- Total spending by category

SELECT
    category,
    SUM(amount) AS total_spent
FROM transactions
GROUP BY category
ORDER BY total_spent DESC;

--------------------------------------------------

-- Monthly total spending

SELECT
    SUM(amount) AS total_monthly_spending
FROM transactions;

--------------------------------------------------

-- Average transaction amount

SELECT
    AVG(amount) AS average_transaction
FROM transactions;

--------------------------------------------------

-- Spending by payment type

SELECT
    payment_type,
    SUM(amount) AS total_spent
FROM transactions
GROUP BY payment_type;

--------------------------------------------------

-- Top 3 largest transactions

SELECT
    *
FROM transactions
ORDER BY amount DESC
LIMIT 3;
