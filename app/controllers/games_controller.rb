require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @values = generate_grid(9)
  end

  def score
    @score = params[yourword]
  end

  private

  def generate_grid(grid_size)
    Array.new(grid_size) { ('A'..'Z').to_a.sample }
  end
end
