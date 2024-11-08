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

ActiveRecord::Schema[7.1].define(version: 2024_11_08_130137) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fares", force: :cascade do |t|
    t.bigint "segment_id", null: false
    t.string "name"
    t.integer "price_in_cents"
    t.string "currency"
    t.integer "comfort_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["segment_id"], name: "index_fares_on_segment_id"
  end

  create_table "segments", force: :cascade do |t|
    t.string "departure_station"
    t.string "arrival_station"
    t.datetime "departure_at"
    t.datetime "arrival_at"
    t.integer "duration_in_minutes"
    t.integer "changeovers"
    t.text "products"
    t.text "service_agencies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainline_bots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fares", "segments"
end
