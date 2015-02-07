class Customize < ActiveRecord::Base
    belongs_to :color
    belongs_to :material
    belongs_to :waku
end
