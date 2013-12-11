###
# Compass
###

# ZURB Foundation
require "zurb-foundation"

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "robots.txt", :layout => false
page "humans.txt", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Pretty URL's
activate :directory_indexes

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Livereload
activate :livereload

# Methods defined in the helpers block are available in templates
helpers do
    def page_title
        data.page.title
    end
    
    def page_description
        data.page.description
    end

    def page_keywords
        data.page.keywords
    end
    def add_meta_noindex_tag?
        current_page.data.add_meta_noindex_tag
    end
end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  #activate :relative_assets
  
  # Use favicon-maker
  #activate :favicon_maker

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end