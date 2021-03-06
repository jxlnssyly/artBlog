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

ActiveRecord::Schema.define(version: 20170720012646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "keyword", default: ""
    t.text "content"
    t.string "name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "src"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "english", id: false, force: :cascade do |t|
    t.integer "id"
    t.text "eng"
    t.text "chinese"
  end

  create_table "foods", force: :cascade do |t|
    t.string "restaurant"
    t.integer "star"
    t.integer "average_price"
    t.string "foodtype"
    t.string "addr"
    t.float "taste"
    t.float "environment"
    t.float "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["average_price"], name: "index_foods_on_average_price"
    t.index ["foodtype"], name: "index_foods_on_foodtype"
    t.index ["restaurant", "addr"], name: "index_foods_on_restaurant_and_addr", unique: true
    t.index ["star"], name: "index_foods_on_star"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
