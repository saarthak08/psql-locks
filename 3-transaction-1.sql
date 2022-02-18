BEGIN;
-- SELECT * from line_items where ledger_id=1 ORDER BY balance DESC LIMIT 1 FOR UPDATE;
INSERT INTO line_items (ledger_id, type, value, balance) values (1, 'credit', 1000, (SELECT balance from line_items where ledger_id=1 ORDER BY balance DESC LIMIT 1 FOR UPDATE) + 1000);
