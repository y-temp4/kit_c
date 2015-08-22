module ApplicationHelper
  def full_title(page_title)
    base_title = "kit-c | 金沢工業大学の非公式掲示板"
    title = "kit-c"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{title}"
    end
  end
end
