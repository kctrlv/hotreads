class Read < ApplicationRecord
  scope :daily, -> { where("created_at > ?", Time.now-1.day) }


  def self.top_ten_reads
    daily.pluck(:url).each_with_object(Hash.new(0)) { |url, count| count[url] += 1 }.sort_by{|k,v|v}.reverse.first(10).to_h
  end
end
