class CreateAdms < ActiveRecord::Migration
  def change
    create_table :adms do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
