module ApplicationHelper

  def stylesheet_link_tags
    stylesheets =
      if Feature.enabled?(:redesign)
        ["redesign", "fonts"]
      else
        ["application", "inter"]
      end

    stylesheet_link_tag(*stylesheets, media: "all", "data-turbo-track": "reload")
  end
end
