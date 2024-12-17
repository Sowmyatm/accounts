CREATE TABLE accounts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Must be a key
    username VARCHAR(255), -- Username of the account holder
    account_id VARCHAR(255) UNIQUE NOT NULL, -- Unique identifier for the account
    status VARCHAR(50), -- Status of the account (e.g., active, inactive)
    currency VARCHAR(10), -- Currency type (e.g., USD, EUR)
    account_type VARCHAR(100), -- Type of account (e.g., savings, current)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Record creation timestamp
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Last update timestamp
    balance DECIMAL(15, 2) DEFAULT 0 -- Account balance with up to 2 decimal places
);
