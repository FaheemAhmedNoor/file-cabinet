
ActiveRecord::Schema[7.0].define(version: 2023_04_26_205850) do
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
