class User < ActiveRecord::Migration
  def self.up
    add_column :notes, :user, :string
  end
  
  def self.down
  end
end
