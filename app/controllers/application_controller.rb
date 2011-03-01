class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  before_filter :log_transaction
  after_filter  :log_end_transaction

  private
  def log_transaction
    wlog "transaction start params: #{params.inspect}"
  end
  def log_end_transaction
    wlog "end of transaction"
  end

  def wlog thing
    puts "= " * 40
    if thing.is_a?(Hash)
      puts JSON.pretty_generate thing
    else
      puts thing.inspect
    end
    puts "= " * 40
  end
=======
>>>>>>> 1f4d9142503ebb86c65667da8edd23d17ec1a898
end
