module Api
  module V1
    class ArrayOperationsController < ApplicationController
      def group_consecutive(arr)
        tmp = []
        main = []
        arr.each_with_index do |x, i|
          if arr[i - 1]
            if arr[i - 1] + 1 == x
              tmp << x
            else
              main << tmp unless tmp.empty?
              tmp = [x]
            end
          else
            tmp << x
          end
        end
        main << tmp
        main
      end

      def number_of_elements_that_the_array_will_have
        @number_of_elements = params[:number_of_elements].to_i

        if @number_of_elements > 31
          render json: { response: 'You entered an incorrect value' }
        elsif @number_of_elements < 10
          render json: { response: 'You entered an incorrect value' }
        else

          @unordered_array = (0..30).to_a.sample @number_of_elements
          @ordered_array = @unordered_array.sort
          @ordered_array = group_consecutive(@ordered_array)
          @longest_length = @ordered_array.max_by(&:length)
          @response = []
          @response.push(@longest_length.first)
          @response.push(@longest_length.last)

          render json: { 
            unordered_array: @unordered_array.to_s, 
            range_longest: @longest_length.to_s,
            result: @response.to_s 
          }
        end
      end
    end
  end
end
