class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :etymology
      t.string :serializer

      t.timestamps null: false
    end
  end
end
