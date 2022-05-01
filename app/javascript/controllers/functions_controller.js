import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello World!")
  }

  delete(event){
    let confirmed = confirm("Are you certain?")

    if(!confirmed) {
      event.preventDefault()
    }
  }
}
