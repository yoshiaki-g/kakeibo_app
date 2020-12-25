class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.date :date, null: false
      t.integer :value, null: false
      t.
      t.timestamps
    end
  end
end
