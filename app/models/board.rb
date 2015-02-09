class Board < ActiveRecord::Base
  has_many :clips, dependent: :destroy
end
