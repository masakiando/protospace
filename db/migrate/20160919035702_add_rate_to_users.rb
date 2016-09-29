class AddRateToUsers < ActiveRecord::Migration
    def change
    add_column :users, :name, :string
    add_column :users, :member_of, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
    add_column :users, :avater, :string
    end
end




#  型 説明  用例
# :integer  数字  ユーザーのidなど
# :string 文字(少なめ) ユーザー名、パスワードなど
# :text 文字(多め)  投稿文など
# :boolean  真か偽か  真偽フラグ
# :timestamp  日付と時刻 作成日時、更新日時など
