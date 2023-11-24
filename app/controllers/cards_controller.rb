class CardsController < ApplicationController

  def index
    all_images = Card.all.shuffle
    selected_images = all_images.sample(10)
    @cards = selected_images.flat_map { |image| [image, image.dup] }.shuffle
  end

  def check_match
    card1 = Card.find(params[:card1_id])
    card2 = Card.find(params[:card2_id])

    if card1.name == card2.name
      # Logique si les cartes correspondent
      # Par exemple, mettre à jour l'attribut 'matched' pour les deux cartes
    else
      # Logique si les cartes ne correspondent pas
      # Par exemple, mettre à jour l'attribut 'flipped' pour les deux cartes

    end

    redirect_to cards_path # Rediriger l'utilisateur vers l'index après la vérification
  end
end
