class PaymentsController < ApplicationController
    def index
        render json: Payment.all

    end

    def show
        payment = Payment.find_by(id: params[:id]) 
        render json: payment
       

    end

    def create
        render json: Payment.create!(booking_params), status: :created
    end

    def destroy
        payment = Payment.find(params[:id])
        payment.destroy
        head :no_content
      end
end
