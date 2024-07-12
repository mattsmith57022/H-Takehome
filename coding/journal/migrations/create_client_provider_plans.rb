class CreateClientProviderPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :client_provider_plans do |t|
      t.references :client, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true
      t.string :plan, null: false

      t.timestamps
    end

    add_index :client_provider_plans, [:client_id, :provider_id], unique: true
  end
end
