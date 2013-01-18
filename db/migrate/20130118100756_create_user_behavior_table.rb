class CreateUserBehaviorTable < ActiveRecord::Migration
  def change
    create_table :spree_user_behaviors, :force => true do |t|
      t.string   :session_id
      t.integer    :user_id
      t.string    :action
      t.string   :parameters
      t.timestamps
    end
  end
end

