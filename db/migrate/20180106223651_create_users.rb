class CreateUsers < ActiveRecord::Migration[5.1]
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