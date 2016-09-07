window.onload = () ->
  wallops = document.querySelector '.Wallop'
  wallop  = new Wallop(wallops)

  setInterval (() => wallop.next()), 3000
