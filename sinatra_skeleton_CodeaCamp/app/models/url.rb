class Url < ActiveRecord::Base

  before_create :short_url


  def self.short_url
    self.short = (0..8).map {[*"A".."Z", * 0..9].sample} 
  end

end 



