module ReadingTimeFilter
    def reading_time(content)
      # Average reading speed (words per minute)
      words_per_minute = 200
  
      # Ensure content is a string and strip HTML tags
      content_text = content.to_s.gsub(/<\/?[^>]*>/, '')
  
      # Count words
      words = content_text.split.size
  
      # Calculate reading time
      minutes = (words.to_f / words_per_minute).ceil
      
      # Handle singular/plural
      if minutes == 1
        "1 min read"
      else
        "#{minutes} min read"
      end
    end
  end
  
  Liquid::Template.register_filter(ReadingTimeFilter)