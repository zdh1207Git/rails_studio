class Movie < ApplicationRecord
  def flop?
    total_gross.blank?||total_gross<50000000
  end
  def old?
    released_on.to_time<'2014-12-01'
  end
end
