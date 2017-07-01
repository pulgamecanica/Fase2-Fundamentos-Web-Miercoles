class CreateUrl < ActiveRecord::Migration[4.2]
  def change
    create_table :urls do |t|
      t.string :original
      t.string :short
      t.timestamps
    end
  end
end
