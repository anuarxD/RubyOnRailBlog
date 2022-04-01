class AutorsController < ApplicationController
  before_action :authenticate_autor!

  layout 'autors'
end 
