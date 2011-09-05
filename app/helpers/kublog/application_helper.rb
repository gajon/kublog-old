module Kublog
  module ApplicationHelper
    
    ## Nifty generators errors helper code
    def error_messages_for(*objects)
      options = objects.extract_options!
      options[:header_message] ||= I18n.t(:"activerecord.errors.header", :default => "Invalid Fields")
      options[:message] ||= I18n.t(:"activerecord.errors.message", :default => "Correct the following errors and try again.")
      messages = objects.compact.map { |o| o.errors.full_messages }.flatten
      unless messages.empty?
        content_tag(:div, :class => "error_messages") do
          list_items = messages.map { |msg| content_tag(:li, msg) }
          content_tag(:h2, options[:header_message]) + content_tag(:p, options[:message]) + content_tag(:ul, list_items.join.html_safe)
        end
      end
    end
    
  end
end
