activate :automatic_image_sizes
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :resume, 'resume.html'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  set :protection, except: [:frame_options]
end

# silence i18n warning
::I18n.config.enforce_available_locales = false


