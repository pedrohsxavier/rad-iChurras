class Task < ApplicationRecord
    has_many :administrators

    accepts_nested_attributes_for :administrators, reject_if: :all_blank, allow_destroy: true
end
