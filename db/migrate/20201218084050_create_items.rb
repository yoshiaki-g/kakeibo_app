class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.date       :date,        null: false
      t.integer    :value,       null: false
      t.integer    :category_id, null: false
      t.integer    :type_id,     null: false
      t.references :user,        null: false,  foreign_key: true
      t.timestamps
    end
  end
end
