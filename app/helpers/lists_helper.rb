module ListsHelper
  def prepend_image_gradient(url)
    color = 'rgba(0, 0, 0, 0.3)'
    "background-image: linear-gradient(#{color}, #{color}),url('#{url}')"
  end
end
