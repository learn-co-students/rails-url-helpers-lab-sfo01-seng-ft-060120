Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/activate', to: 'students#activate', as: "activate_student"
end

# A user should be able to navigate to /students to view all of the students
# A user should be able to click the student's name on the index page and be
#  taken to that specific student's show page.