class AddTreeRefToBirds < ActiveRecord::Migration[6.0]
  def change
    add_reference :birds, :tree, null: false, foreign_key: true
  end
end
