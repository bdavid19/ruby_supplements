class CreateContainings < ActiveRecord::Migration[6.1]
  def change
    create_table :containings do |t|
      t.string :containing
      t.references :foodsupplements, null: false, foreign_key: true

      t.timestamps
    end
  end
end
