class RenameMemberOfColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :member_of, :member
  end
end
