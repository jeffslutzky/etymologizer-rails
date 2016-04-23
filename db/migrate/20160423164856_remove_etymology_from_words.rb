class RemoveEtymologyFromWords < ActiveRecord::Migration
  def change
    remove_column :words, :etymology, :string
  end
end
