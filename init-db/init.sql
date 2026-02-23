-- Create table for job vacancies
CREATE TABLE IF NOT EXISTS job_search_vacancies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    company VARCHAR(200) NOT NULL,
    link TEXT UNIQUE NOT NULL,
    description TEXT,
    source VARCHAR(100),
    ai_score DECIMAL(3,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index for faster searches
CREATE INDEX IF NOT EXISTS idx_job_search_vacancies_company ON job_search_vacancies(company);
CREATE INDEX IF NOT EXISTS idx_job_search_vacancies_created_at ON job_search_vacancies(created_at);
CREATE INDEX IF NOT EXISTS idx_job_search_vacancies_ai_score ON job_search_vacancies(ai_score);
