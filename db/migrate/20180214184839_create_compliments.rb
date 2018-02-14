class CreateCompliments < ActiveRecord::Migration[5.1]
  def change
    create_table :compliments do |t|
      t.text :text

      t.timestamps
    end
  end
end
