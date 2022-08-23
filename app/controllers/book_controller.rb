class BookController < ApplicationController
  def index
    @bookes = Book.all
  end
end
