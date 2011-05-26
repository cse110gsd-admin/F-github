class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :all_day
      t.text :description
     # t.integer :weight
      t.timestamps
    end

    change_table :events do |t|
      t.add_column, :user_id, :integer
    end
  end

  def self.down
    drop_table :events
  end
end
