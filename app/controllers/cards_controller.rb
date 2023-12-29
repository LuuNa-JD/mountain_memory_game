class CardsController < ApplicationController

  def index
    difficulty = params[:difficulty] || 'easy'
    pair_count = case difficulty
                when 'medium'
                  15
                when 'hard'
                  20
                else
                  10
                end

    unique_images = Card.all.shuffle.uniq { |card| card.name }.first(pair_count)

                # Dupliquez chaque image une fois pour créer des paires
    @cards = unique_images.flat_map { |image| [image, image.dup] }.shuffle
  end
  def check_match
    card1 = Card.find(params[:card1_id])
    card2 = Card.find(params[:card2_id])

    if card1.pair_id == card2.pair_id
      # Logique si les cartes correspondent
    else
      # Logique si les cartes ne correspondent pas
    end

    redirect_to cards_path
  end

end
