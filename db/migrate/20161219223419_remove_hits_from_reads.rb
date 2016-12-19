class RemoveHitsFromReads < ActiveRecord::Migration[5.0]
  def change
    remove_column :reads, :hits, :integer
  end
end
