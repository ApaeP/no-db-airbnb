require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
  # Ici on utilise un `filter` "before_action", donc avant chaque action de ce controller (et ses héritiers)
  # la méthode `set_flats` sera executée, et nous aurons donc accès à la variable d'environnement `@flats`
  # dans toutes les méthodes de ce controller
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    @flats = JSON.parse(URI.open(FLATS_URL).read)
  end
end
