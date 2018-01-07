class CreateUsers < ActiveRecord::Migration[5.1]
# TO RUN A MIGRATION USE:
# rails db:migrate
# !!!
# https://stackoverflow.com/questions/10171673/how-to-access-default-rails-sqlite-db HOW TO ACCESS DEFAULT RAILS SQLITE DB
  # rails db
  # SQLITE> .tables
  # SQLite> rails dbconsole
  # SQLite> .tables
  # SQLite> select * from users
# rails db:migrate VERSION=0 -- undoes all the migrations and goes back to zero
  
#  def change
#    create_table :users do |t|
#
#     t.timestamps
#    end
#  end
  
  def up
    create_table :users do |t|
      #t.column "first_name", :string
      #t.string "first_name" -- short version
      #Table column types:
      #binary, boolean, date, datetime, decimal, float, integer (becomes INT), string (becomes VARCHAR), text, time
      
      #Table column options:
      #:limit => size
      #:default => value
      #:null => true/false
      #:precision => number
      #:scale => number
      
      # you don't have to remember to add a column for ID, Rails will do it for us; you only need to specify when you DON'T wanna do it
      # like this: create_table :users, :id => false do |t|
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
     
      #t.datetime "created_at"
      #t.datetime "updated_at"
      # shorthand for above:
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
  
end