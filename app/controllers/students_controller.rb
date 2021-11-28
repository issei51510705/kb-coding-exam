class StudentsController < ApplicationController
    def index
        @students = Students.all
    end
    def new
        @students = Students.new
      end
      def create
        students = Students.new(students_params)
        if students.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def students_params
        params.require(:students).permit(:name)
      end
      def link
      end

end
