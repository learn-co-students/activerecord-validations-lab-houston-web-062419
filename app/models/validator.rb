
class MyValidator < ActiveModel::Validator
  def validate(record)

  	clickbaity = ["Won't Believe", "Secret", "Guess"]
  	clickbaity.each do |c|
	    return if record.title.include? c
	end
	return if record.title[/Top \d+/]

	record.errors[:title] << 'Should be a clickbait-y title!'
  end
end