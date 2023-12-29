class AddPairIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :pair_id, :string
  end
end
