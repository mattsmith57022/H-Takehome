class Client < ApplicationRecord
  has_many :journal_posts
  has_many :client_provider_plans
  has_many :providers, through: :client_providers_plan
end
