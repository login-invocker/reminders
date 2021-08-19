module UsersHelper
  def display_image object
    if object.avatar_url.present?
      avatar = "<img src=\"#{object.avatar_url}\">"
      avatar.html_safe
    else
      no_image = "<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png'>"
      no_image.html_safe
    end
  end

  def format_avatar_url(user)
    if user.avatar_url.present?
      'Has avatar'
    else
      'No avatar'
    end
  end
end
