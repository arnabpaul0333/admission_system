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

ActiveRecord::Schema.define(version: 20140922083551) do

  create_table "educations", force: true do |t|
    t.integer  "student_id",          null: false
    t.string   "tenth_board"
    t.string   "tenth_school_name"
    t.integer  "tenth_percentage"
    t.string   "twelvth_board"
    t.string   "twelvth_school_name"
    t.integer  "twelvth_percentage"
    t.integer  "entrance_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "contact"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree

end
