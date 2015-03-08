class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :question_id, :user_id, presence: true
  validates :like, inclusion: { in: [true, false] }

 #  def answers
 #    self.hashtags.pluck(:name)
 #  end

 #  def self.ordered_json
 #  	order("created_at DESC").limit(50).to_json(methods: :answers)
	# end
end