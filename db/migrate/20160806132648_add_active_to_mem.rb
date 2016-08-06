class AddActiveToMem < ActiveRecord::Migration[5.0]
  def change
    add_column :mems, :active, :boolean, default: false
  end
end
