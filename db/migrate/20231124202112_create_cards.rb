class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :image_url
      t.boolean :matched

      t.timestamps
    end
  end
end
