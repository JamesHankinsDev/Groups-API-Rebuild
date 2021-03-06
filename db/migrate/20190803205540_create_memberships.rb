class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.string :contact_email
      t.timestamps
    end
  end
end
