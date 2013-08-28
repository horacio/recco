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

ActiveRecord::Schema.define(version: 20130828223530) do

  create_table "thangs", force: true do |t|
    t.string   "what"
    t.string   "place"
    t.datetime "date"
    t.decimal  "amount"
    t.decimal  "novelty_rating"
    t.text     "description"
    t.string   "flyer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "archived"
    t.string   "slug"
  end

  add_index "thangs", ["slug"], name: "index_thangs_on_slug", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",        default: false
  end

end
