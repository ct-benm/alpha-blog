class CreateArtikulo < ActiveRecord::Migration[6.0]
  def change
    create_table :artikulos do |t|
      t.string :title
    end
  end
end
