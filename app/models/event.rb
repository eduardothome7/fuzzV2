class Event < ApplicationRecord
	validates_presence_of :start_at
	validates_presence_of :duration
end
