module ListsHelper
  def prepend_image_gradient(url, options = {})
    url = cl_image_path url if options[:cloudinary]

    color = 'rgba(0, 0, 0, 0.3)'
    "background-image: linear-gradient(#{color}, #{color}),url('#{url}')"
  end
end
