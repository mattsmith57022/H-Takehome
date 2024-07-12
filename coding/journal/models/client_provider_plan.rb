class ClientProviderPlan < ApplicationRecord
  belongs_to :client
  belongs_to :provider
  validate :valid_plan

  private

  def valid_plan
    unless ['basic', 'premium'].include?(plan)
      errors.add(:plan, "must be either 'basic' or 'premium'")
    end
  end
end
