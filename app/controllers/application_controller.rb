class ApplicationController < ActionController::Base
  protect_from_forgery
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
end
