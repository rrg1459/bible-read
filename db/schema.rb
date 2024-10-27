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

ActiveRecord::Schema[7.1].define(version: 2024_10_27_185357) do
  create_table "historicos", force: :cascade do |t|
    t.integer "versiculo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libros", force: :cascade do |t|
    t.integer "testamento_id"
    t.text "nombre"
    t.text "abreviacion"
    t.integer "capitulos"
  end

  create_table "testamentos", force: :cascade do |t|
    t.text "nombre"
  end

  create_table "versiculos", force: :cascade do |t|
    t.integer "libro_id"
    t.integer "capitulo"
    t.integer "versiculo"
    t.text "texto"
    t.index ["libro_id", "capitulo"], name: "_libro_id_capitulo"
  end

  add_foreign_key "libros", "testamentos"
  add_foreign_key "versiculos", "libros"
end
