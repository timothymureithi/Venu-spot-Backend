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

ActiveRecord::Schema[7.0].define(version: 2023_07_04_200647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "endDate"
    t.string "startDate"
    t.string "duration"
    t.string "num_guest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "venue_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "venue_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venues", force: :cascade do |t|
    t.integer "price"
    t.string "description"
    t.string "location"
    t.integer "capacity"
    t.string "imageUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
