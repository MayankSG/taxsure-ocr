module ApplicationHelper
  def field_class(resource, field_name)
    if resource.errors.any?
      return "error form-control".html_safe if resource.errors[field_name]
    else
      return "green-color form-control".html_safe
    end
  end
end
