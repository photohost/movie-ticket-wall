-- Every public poster request checks that its poster_key belongs to a
-- published ticket. Without this index that lookup scans the whole table.
CREATE INDEX IF NOT EXISTS tickets_poster_key ON tickets (poster_key);
