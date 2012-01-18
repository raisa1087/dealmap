class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :type_name
      t.string :description

      t.timestamps
    end
  end
end
