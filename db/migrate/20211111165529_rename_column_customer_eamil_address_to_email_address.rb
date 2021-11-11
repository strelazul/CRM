class RenameColumnCustomerEamilAddressToEmailAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :eamil_address, :email_address
  end
end
