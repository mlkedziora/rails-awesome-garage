# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "dynamic_navbar", to: "components/dynamic_navbar.js"
pin "sound_toggle", to: "components/sound_toggle.js"
