class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.references :item, forign_key: true
      t.references :user, forign_key: true
      t.timestamps
    end
  end
end
