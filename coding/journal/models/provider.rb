class Provider < ApplicationRecord
  has_many :client_provider_plans
  has_many :clients, through: :client_providers_plans
  has_many :journal_posts, through: :clients
end
