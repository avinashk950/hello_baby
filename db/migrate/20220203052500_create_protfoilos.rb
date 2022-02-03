class CreateProtfoilos < ActiveRecord::Migration[7.0]
  def change
    create_table :protfoilos do |t|
      t.string :social_media
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
