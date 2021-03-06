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

ActiveRecord::Schema.define(version: 20180221023819) do

  create_table "adresses", force: :cascade do |t|
    t.string "NumeroCivique"
    t.string "CodePostal"
    t.string "Ville"
    t.string "Province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "Prenom"
    t.string "Nom"
    t.date "DateNaissance"
    t.string "nas"
    t.integer "Adress_id"
    t.integer "NombresEnfants"
    t.integer "CompteTaxesProprietaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adress_id"], name: "index_clients_on_Adress_id"
  end

  create_table "etudes", force: :cascade do |t|
    t.string "Secteur"
    t.string "Niveau"
    t.date "DateDebut"
    t.date "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
  end

end
