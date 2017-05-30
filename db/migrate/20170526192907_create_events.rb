class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_at
      t.text :description

      t.timestamps
    end
  end
end
