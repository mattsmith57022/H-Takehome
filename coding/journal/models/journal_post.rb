class JournalPost < ApplicationRecord
  belongs_to :client
  validates :posted_at, presence: true
end
