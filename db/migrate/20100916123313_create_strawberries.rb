class CreateStrawberries < ActiveRecord::Migration
  def self.up
    create_table :strawberries do |t|
      t.string :color
      t.timestamps
    end
  end
  
  def self.down
    drop_table :strawberries
  end
end
