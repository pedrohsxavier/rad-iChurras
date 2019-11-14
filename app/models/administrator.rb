class Administrator < ApplicationRecord
    has_many :tasks
    has_many :guests

    accepts_nested_attributes_for :guests, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end
