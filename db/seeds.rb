30.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  chatwork = "Khanh#{n+1}"
  password = "password"
  answer_type = 1
  content = "Question no #{n+1}"
  user_id = n+1
  level_id = 2
  content2 = "Answer no #{n+1}"
  content3 = "Answer 2nd #{n+1}"
  content4 = "Answer 3rd #{n+1}"
  content5 = "Answer 4th #{n+1}"
  is_correct = 1
  is_correct2 = 0
  question_id = n+13
  Question.create!(
                          answer_type: answer_type,
                          content: content,
                          level_id: level_id)
  Answer.create!(content: content2,
                        is_correct: is_correct,
                        question_id: question_id)
  Answer.create!(content: content3,
                        is_correct: is_correct2,
                        question_id: question_id)
  Answer.create!(content: content4,
                        is_correct: is_correct2,
                        question_id: question_id)
  Answer.create!(content: content5,
                        is_correct: is_correct2,
                        question_id: question_id)
end
