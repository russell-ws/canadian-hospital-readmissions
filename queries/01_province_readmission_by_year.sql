SELECT 
    "Province/territory",
    "Time frame",
    AVG("Risk-adjusted rate") AS avg_readmission_rate
FROM all_patients
WHERE "Reporting level" = 'Province/territory'
GROUP BY "Province/territory", "Time frame"
ORDER BY "Province/territory", "Time frame";