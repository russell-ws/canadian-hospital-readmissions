SELECT 
    "Place or organization",
    "Region",
    "Time frame",
    "Risk-adjusted rate"
FROM all_patients
WHERE "Province/territory" = 'British Columbia'
    AND "Reporting level" = 'Facility'
    AND "Risk-adjusted rate" != '-'
ORDER BY "Risk-adjusted rate" DESC;