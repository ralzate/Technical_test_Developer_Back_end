Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'number_of_elements_that_the_array_will_have', to: 'array_operations#number_of_elements_that_the_array_will_have'
    end  
  end  
end
