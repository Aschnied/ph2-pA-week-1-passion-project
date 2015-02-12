class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.string :commander
      t.string :tag
      t.belongs_to :user
      t.timestamps
    end
  end
end