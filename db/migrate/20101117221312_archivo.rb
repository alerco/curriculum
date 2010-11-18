class Archivo < ActiveRecord::Migration
  def self.up
      add_column :notes, :cv_file_name,    :string
      add_column :notes, :cv_content_type, :string
      add_column :notes, :cv_file_size,    :integer
      add_column :notes, :cv_updated_at,   :datetime
  end
  def self.down
      remove_column :notes, :cv_file_name
      remove_column :notes, :cv_content_type
      remove_column :notes, :cv_file_size
      remove_column :notes, :cv_updated_at
  end
end
