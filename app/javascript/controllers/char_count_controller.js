import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "count"];

  update() {
    console.log(this.inputTarget.value.length);
    this.countTarget.textContent = this.inputTarget.value.length;
  }
}
