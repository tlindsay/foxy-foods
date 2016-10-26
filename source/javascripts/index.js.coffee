window.onload = () ->
  console.log '%c Photography by Unsplash: https://unsplash.com', 'color: blue; font-size: 14px;'
  window.imgs = imgs = []
  for img in document.querySelectorAll('.backgrounds .img')
    i = new Image()
    i.src = img.getAttribute('data-src')
    imgs.push i
  i = 2

  setInterval () ->
    document.body.style.background = "url(#{imgs[i % imgs.length].src})"
    i++
  , 3000
