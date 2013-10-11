module ApplicationHelper
<<<<<<< HEAD

=======
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
