CREATE TABLE IF NOT EXISTS customers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_code TEXT UNIQUE NOT NULL,
  type TEXT DEFAULT 'company',
  full_name TEXT NOT NULL,
  company TEXT, job_title TEXT, phone TEXT, whatsapp TEXT, email TEXT,
  website TEXT, instagram TEXT, facebook TEXT, location TEXT, linkedin TEXT, extra TEXT,
  bio TEXT, photo_data TEXT, logo_data TEXT, card_written TEXT DEFAULT '',
  created_at TEXT DEFAULT CURRENT_TIMESTAMP, updated_at TEXT DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS analytics (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_code TEXT NOT NULL,
  event TEXT NOT NULL,
  country TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_customers_code ON customers(customer_code);
CREATE INDEX IF NOT EXISTS idx_analytics_code ON analytics(customer_code);
