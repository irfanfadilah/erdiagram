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

ActiveRecord::Schema.define(version: 20151102045328) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "classrooms", ["department_id"], name: "index_classrooms_on_department_id"

  create_table "classrooms_students", force: :cascade do |t|
    t.integer "classroom_id"
    t.integer "student_id"
  end

  add_index "classrooms_students", ["classroom_id"], name: "index_classrooms_students_on_classroom_id"
  add_index "classrooms_students", ["student_id"], name: "index_classrooms_students_on_student_id"

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "building"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lecturers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "gender"
    t.float    "salary"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "lecturers", ["classroom_id"], name: "index_lecturers_on_classroom_id"

  create_table "lecturers_subjects", force: :cascade do |t|
    t.integer "lecturer_id"
    t.integer "subject_id"
  end

  add_index "lecturers_subjects", ["lecturer_id"], name: "index_lecturers_subjects_on_lecturer_id"
  add_index "lecturers_subjects", ["subject_id"], name: "index_lecturers_subjects_on_subject_id"

  create_table "scores", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.float    "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scores", ["student_id"], name: "index_scores_on_student_id"
  add_index "scores", ["subject_id"], name: "index_scores_on_subject_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "gender"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_subjects", force: :cascade do |t|
    t.integer "student_id"
    t.integer "subject_id"
  end

  add_index "students_subjects", ["student_id"], name: "index_students_subjects_on_student_id"
  add_index "students_subjects", ["subject_id"], name: "index_students_subjects_on_subject_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
