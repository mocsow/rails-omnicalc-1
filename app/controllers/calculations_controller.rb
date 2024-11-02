class CalculationsController < ApplicationController
  
  def square_form
    render template: 'calculations/square_form'
  end

  def square_results
    @number = params[:number].to_f
    @square = @number**2
    render template: 'calculations/square_results'
  end

  def square_root_form
    render template: 'calculations/square_root_form'
  end

  def square_root_results
    @number = params[:number].to_f
    @square_root = Math.sqrt(@number)
    render template: 'calculations/square_root_results'
  end

  def payment_form
    render template: 'calculations/payment_form'
  end

  def payment_results
    apr = params[:apr].to_f / 100 / 12
    years = params[:years].to_i
    @principal = params[:present_value].to_f
    months = years * 12
  
    @monthly_payment = if apr.zero?
                         @principal / months
                       else
                         (@principal * apr) / (1 - (1 + apr)**-months)
                       end
  
    render template: 'calculations/payment_results'
  end

  def random_form
    render template: 'calculations/random_form'
  end

  def random_results
    @min = params[:min].to_f
    @max = params[:max].to_f
    @random_number = rand(@min..@max)
    render template: 'calculations/random_results'
  end
end
