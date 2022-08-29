BEGIN;

\i schema.sql

INSERT INTO Users (UserID) SELECT 100+i*10 FROM generate_series(0, 5) i;

INSERT INTO BankAccounts
VALUES
    (50, 100, 100.0),
    (51, 110, 50.0),
    (52, 110, 40.0),
    (53, 140, -20.0),
    (54, 130, 20.0)
    ;

INSERT INTO BankDeposits
VALUES
    (1, 50, 100, 50.0, now() - interval '1 day'),
    (2, 50, 110, 50.0, now() - interval '3 days'),
    (3, 51, 110, 100.0, now() - interval '2 weeks'),
    (4, 52, 140, 60.0, now() - interval '2 weeks'),
    (5, 54, 130, 20.0, now() - interval '7 hours')
    ;

COMMIT;
