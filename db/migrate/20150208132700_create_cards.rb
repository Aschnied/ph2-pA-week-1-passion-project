class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :mana_cost
      t.integer :converted_mana_cost
      t.string :type
      t.string :abilities
      t.integer :power
      t.integer :toughness
      t.belongs_to :deck
    end
  end
end