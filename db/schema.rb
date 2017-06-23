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

ActiveRecord::Schema.define(version: 20170623001950) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_at"
    t.datetime "end_at"
    t.decimal  "amount"
    t.integer  "room_id"
    t.integer  "user_id"
    t.text     "invites"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "status_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "duration"
    t.string   "integer"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "studio_id"
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "price_hour"
    t.decimal  "price_weekend"
    t.string   "price_special_decimal"
    t.decimal  "price_late"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
