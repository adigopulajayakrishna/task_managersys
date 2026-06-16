class Subtask < ApplicationRecord
  belongs_to :task

  validates :name, presence: true
  validates :priority, inclusion: { in: %w[H M L] }
end
