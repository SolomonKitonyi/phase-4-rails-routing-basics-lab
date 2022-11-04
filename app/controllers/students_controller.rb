class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end
    def highest_grade
        first_student = Student.order(grade: :desc).first
        render json: first_student
    end
end
