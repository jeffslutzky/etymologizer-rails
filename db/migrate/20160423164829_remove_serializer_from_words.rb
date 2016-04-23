class RemoveSerializerFromWords < ActiveRecord::Migration
  def change
    remove_column :words, :serializer, :string
  end
end
