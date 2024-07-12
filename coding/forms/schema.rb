
ActiveRecord::Schema.define(version: 2024_070000) do

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.timestamps
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.timestamps
  end

  create_table "forms", force: :cascade do |t|
    t.references :provider, null: false, foreign_key: true
    t.string "title"
    t.jsonb "form_structure", null: false
    t.timestamps
  end

  create_table "form_submissions", force: :cascade do |t|
    t.references :form, null: false, foreign_key: true
    t.references :client, null: false, foreign_key: true
    t.jsonb "responses", null: false
    t.timestamps
  end
end
