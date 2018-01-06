class DoNothingYet < ActiveRecord::Migration[5.1]
  #change is a shorthand to having up and dowm methods!
  # def change
  # end
  
  # change lets us write only the up code and then let rails try to reverse that method
  # up describes changes we wanna make to our current database
  # down describes how to reverse those changes, to undo what's in the up method
  # they're mirror images of each other - if the up creates a db table, the down deletes or drops it
  def up
  end
  
  def down
  end
  
end
