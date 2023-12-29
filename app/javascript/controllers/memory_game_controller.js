import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card"];

  connect() {
    this.flippedCards = [];
  }

  flipCard(event) {
    let card = event.currentTarget;

    if (this.flippedCards.includes(card) || this.flippedCards.length === 2 || card.classList.contains("matched")) {
      return; // Empêche de retourner plus de deux cartes à la fois, la même carte deux fois, ou une carte déjà appariée
    }

    card.classList.add("flipped");
    this.flippedCards.push(card);

    if (this.flippedCards.length === 2) {
      this.checkForMatch();
    }
  }

  checkForMatch() {
    let [firstCard, secondCard] = this.flippedCards;

    if (firstCard.dataset.cardId === secondCard.dataset.cardId) {
      firstCard.classList.add("matched");
      secondCard.classList.add("matched");
      this.resetFlippedCards();
    } else {
      setTimeout(() => {
        this.flippedCards.forEach(card => card.classList.remove("flipped"));
        this.resetFlippedCards();
      }, 1000);
    }
  }

  resetFlippedCards() {
    this.flippedCards = [];
  }
}
