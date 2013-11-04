class CreatePonds < ActiveRecord::Migration
  def up
    create_table :ponds do |t|
      t.string :name
      t.string :water_type
      t.timestamps
    end
  end

  def down
    drop_table :ponds
  end
end
