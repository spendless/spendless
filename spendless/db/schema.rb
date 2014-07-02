# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140502180316) do

  create_table "accounts", force: true do |t|
    t.string  "account_type"
    t.string  "bank"
    t.integer "balance"
    t.integer "user_id"
  end

  create_table "budgets", force: true do |t|
    t.integer "limit"
    t.date    "start_date"
    t.date    "end_date"
    t.integer "user_id"
  end

  create_table "transactions", force: true do |t|
    t.string  "transaction_type"
    t.integer "amount"
    t.string  "name"
    t.string  "category"
    t.integer "account_id"
    t.date    "transaction_date"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.date   "birthday"
    t.string "password_digest"
  end

end
