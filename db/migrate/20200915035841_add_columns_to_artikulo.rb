class AddColumnsToArtikulo < ActiveRecord::Migration[6.0]
  def change
    add_column :artikulos, :description, :text
    add_column :artikulos, :created_at, :datetime
    add_column :artikulos, :updated_at, :datetime
  end
end
