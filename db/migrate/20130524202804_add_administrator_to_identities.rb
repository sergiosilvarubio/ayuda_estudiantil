class AddAdministratorToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :administrator, :boolean, :default => false
  end
end
