class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :nation
      t.text :url
      t.string :api_id
      t.timestamps
    end
  end
end
