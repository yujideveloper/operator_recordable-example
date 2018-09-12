class InitialSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :operators do |t|
      t.string :name

      t.timestamps
      t.datetime :deleted_at, null: true

      t.integer :created_by, null: true
      t.integer :updated_by, null: true
      t.integer :deleted_by, null: true
    end

    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
      t.datetime :deleted_at, null: true

      t.integer :created_by, null: true
      t.integer :updated_by, null: true
      t.integer :deleted_by, null: true
    end
  end
end
