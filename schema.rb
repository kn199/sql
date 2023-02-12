create_table "events", charset: "utf8mb4", force: :cascade do |t|
  t.bigint "user_id", null: false
  t.string "title"
  t.text "description"
  t.datetime "start_time"
  t.datetime "end_time"
  t.datetime "deleted_at"
  t.boolean "is_accepting", default: true
  t.integer "capacity"
  t.integer "already_accepted_count", default: 0
  t.string "place"
  t.boolean "is_finished", default: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end

create_table "user_events", charset: "utf8mb4", force: :cascade do |t|
  t.bigint "user_id", null: false
  t.bigint "event_id", null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end

create_table "users", charset: "utf8mb4", force: :cascade do |t|
  t.string "name"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
end
