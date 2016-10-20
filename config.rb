###
# Helpers
###

require 'evil_icons'
helpers EvilIcons::Helpers

after_configuration do
  sprockets.append_path(EvilIcons.assets_dir)
end

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

activate :directory_indexes
activate :dotenv
activate :autoprefixer
activate :meta_tags
activate :imageoptim

# S3 Settings
activate :s3_sync do |s3|
  s3.bucket = 'foxyfoodsgordo.com'
  s3.aws_access_key_id = ENV['ACCESS_KEY_ID']
  s3.aws_secret_access_key = ENV['SECRET_KEY']
  s3.prefer_gzip = true
  s3.index_document = 'index.html'
end
default_caching_policy max_age:(60 * 60 * 24 * 90)
caching_policy 'text/html', max_age: 0, must_revalidate: true

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash
  activate :relative_assets
  activate :gzip
end
