class Show < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  # validates (:watched || :watching || :to_watch), presence: true

  # before_save :default_values
  # def default_values
  #   if !self.watched && !self.watching
  #     self.to_watch = true
  #   else
  #     self.watched ||= false
  #     self.watching ||= false
  #     self.to_watch ||= false
  #   end
  # end
end
