class AddCountToReads < ActiveRecord::Migration[5.0]
  def change
    add_column :reads, :hits, :integer
  end
end
