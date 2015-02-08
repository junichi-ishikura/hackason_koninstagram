class Appointment < ActiveRecord::Base
 belongs_to :factory
 belongs_to :user
end
