class CreatePonies < ActiveRecord::Migration
  def self.up
    create_table :ponies do |t|
      t.string :name
      t.string :kind
      t.string :cutie_mark_description
      t.text :cutie_mark_image_url
      t.boolean :princess
      t.text :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :ponies
  end
end
