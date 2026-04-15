SELECT 
    "Urban or rural/remote",
    "Time frame",
    AVG("Risk-adjusted rate") AS avg_rate,
    COUNT(*) AS num_hospitals
FROM all_patients
WHERE "Province/territory" = 'British Columbia'
    AND "Reporting level" = 'Facility'
    AND "Risk-adjusted rate" != '-'
    AND "Urban or rural/remote" != 'Not applicable'
GROUP BY "Urban or rural/remote", "Time frame"
ORDER BY "Time frame", avg_rate DESC;