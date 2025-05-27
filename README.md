# 📡 Dynamic Field Proof of Concept API

> A lightweight proof-of-concept API built with **Ruby 3.3.6** and **Rails 8.0.2**.  


![Ruby](https://img.shields.io/badge/ruby-3.3.6-red.svg)  
![Rails](https://img.shields.io/badge/rails-8.0.2-red.svg)

---

## 🧩 Features

- 🧪 Proof-of-concept for API-only Rails apps
- 🧼 No views, assets, or frontend code — clean API structure
- 🚀 Fast JSON responses via `Jbuilder`
- 🔒 Parameter fields sanitisation to ensure concise and intentional fetching
- 📦 Dynamic field retrieval and render through parameters

---

## ⚙️ Tech Stack

- **Ruby** 3.3.6
- **Rails** 8.0.2 (API-only mode)
- **SQLite** (default engine)

---

## 📥 Setup

Clone the repo and install dependencies:

```bash
git clone https://github.com/yourname/rails-api-poc.git
cd rails-api-poc

# Install Ruby version (using asdf/rbenv/rvm)
rbenv install 3.3.6
rbenv local 3.3.6

# Install gems
bundle install

# Set up the database
bin/rails db:setup
```

Example Request: `http://localhost:3000/api/users.json?fields[]=id&fields[]=first_name&fields[]=last_name&fields[]=email&fields[]=password_digest&per_page=5&page=1`

This will fetch the id, first name, last name and email of all users. It will only return 5 at a time, controlled by pagination. 

*Note: While there is a request of the password_digest field, because it's not an allowed field, it is not fetched or returned.*