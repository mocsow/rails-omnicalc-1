Rails.application.routes.draw do
  
  root to: 'calculations#square_form'

  get '/square/new', to: 'calculations#square_form'
  get '/square/results', to: 'calculations#square_results'

  get '/square_root/new', to: 'calculations#square_root_form'
  get '/square_root/results', to: 'calculations#square_root_results'

  get '/payment/new', to: 'calculations#payment_form'
  get '/payment/results', to: 'calculations#payment_results'

  get '/random/new', to: 'calculations#random_form'
  get '/random/results', to: 'calculations#random_results'
end
