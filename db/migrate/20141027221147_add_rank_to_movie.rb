class AddRankToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :rank, :integer
  end
end
