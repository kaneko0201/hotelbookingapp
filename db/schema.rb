# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_08_26_050949) do

  create_table "reservations", force: :cascade do |t|
    t.date "rev_checkin"
    t.date "rev_checkout"
    t.integer "rev_lengthofstay"
    t.integer "rev_finalbill"
    t.integer "rev_headcount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_image"
    t.string "room_name"
    t.text "room_introduction"
    t.integer "room_fee"
    t.string "room_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_mail"
    t.string "user_password"
    t.string "user_checkpassword"
    t.string "user_image"
    t.text "user_introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
