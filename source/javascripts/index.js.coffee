window.onload = () ->
  console.log '%c Photography by Unsplash: https://unsplash.com', 'color: blue; font-size: 14px;'
  imgs = document.querySelectorAll '.backgrounds img'
  i = 2

  setInterval () =>
    document.body.style.background = "url(#{imgs[i % imgs.length].src})"
    i++
  , 3000
