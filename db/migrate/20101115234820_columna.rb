class Columna < ActiveRecord::Migration
  def self.up
    rename_column :notes, :destription, :description
  end

  def self.down
  end
end
