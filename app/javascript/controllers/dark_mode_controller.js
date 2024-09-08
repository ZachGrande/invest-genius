import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    if (localStorage.theme === 'dark' || (!('theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
      document.documentElement.setAttribute('data-bs-theme', 'dark');
      document.getElementById('color-theme').checked = true;
    } else {
        document.documentElement.removeAttribute('data-bs-theme');
    }
  }

  toggle() {
    if (localStorage.theme === 'dark') {
        localStorage.theme = 'light'
    } else {
        localStorage.theme = 'dark'
    }
    this.connect()
  }
}
