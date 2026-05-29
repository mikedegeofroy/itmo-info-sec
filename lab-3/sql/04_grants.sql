
GRANT USAGE ON SCHEMA public TO itmo_users, itmo_readers;

GRANT SELECT, INSERT, UPDATE, DELETE
    ON ALL TABLES IN SCHEMA public TO itmo_users;

GRANT USAGE, SELECT
    ON ALL SEQUENCES IN SCHEMA public TO itmo_users;

GRANT SELECT
    ON ALL TABLES IN SCHEMA public TO itmo_readers;
