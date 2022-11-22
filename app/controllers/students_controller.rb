class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grade
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        student = Student.order(grade: :desc).last
        render json: student
    end
end
