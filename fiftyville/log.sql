-- o roubo ocorreu em 28 de julho de 2020 na Chamberlin Street.

/* SELECT id, description
FROM crime_scene_reports
WHERE year = 2020 and month = 7 and day = 28 and street = 'Chamberlin Street' */

/* SELECT id, name, transcript
FROM interviews
WHERE year = 2020 and month = 7 and day = 28 */

/*
SELECT *
FROM atm_transactions
INNER JOIN bank_accounts on bank_accounts.account_number = atm_transactions.account_number
INNER JOIN people on people.id = bank_accounts.person_id
WHERE atm_location = 'Fifer Street' and year = 2020 and month = 7 and day = 28
*/

/*
SELECT *
from flights
INNER JOIN airports on flights.destination_airport_id = airports.id
INNER JOIN passengers on passengers.flight_id = flights.id
WHERE airports.city = 'Fiftyville' and flights.year = 2020 and flights.month = 7 and flights.day = 30
*/

/*
SELECT DISTINCT people.name
FROM atm_transactions
INNER JOIN bank_accounts ON bank_accounts.account_number = atm_transactions.account_number
INNER JOIN people ON people.id = bank_accounts.person_id
WHERE atm_location = 'Fifer Street' AND year = 2020 AND month = 7 AND day = 28
AND EXISTS (
    SELECT 1
    FROM flights
    INNER JOIN airports ON flights.destination_airport_id = airports.id
    INNER JOIN passengers ON passengers.flight_id = flights.id
    WHERE airports.city = 'Fiftyville' AND flights.year = 2020 AND flights.month = 7 AND flights.day = 30
    AND people.passport_number = passengers.passport_number
);
*/

/*
SELECT *
FROM phone_calls
INNER JOIN people on people.phone_number = phone_calls.caller
WHERE year = 2020 and month = 7 and day = 29
*/

SELECT DISTINCT people.name
FROM atm_transactions
INNER JOIN bank_accounts ON bank_accounts.account_number = atm_transactions.account_number
INNER JOIN people ON people.id = bank_accounts.person_id
WHERE atm_location = 'Fifer Street' AND year = 2020 AND month = 7 AND day = 28
AND EXISTS (
    SELECT 1
    FROM flights
    INNER JOIN airports ON flights.destination_airport_id = airports.id
    INNER JOIN passengers ON passengers.flight_id = flights.id
    WHERE airports.city = 'Fiftyville' AND flights.year = 2020 AND flights.month = 7 AND flights.day = 30
    AND people.passport_number = passengers.passport_number
)
AND EXISTS (
    SELECT 1
    FROM phone_calls
    WHERE people.phone_number = phone_calls.caller AND year = 2020 AND month = 7 AND day = 29
);