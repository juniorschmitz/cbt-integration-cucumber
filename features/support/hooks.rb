Before do
  @search_page = SearchPage.new
  @results_page = ResultsPage.new
  
  page.current_window.resize_to(1920, 1080)
end
  
After do |scenario|
  screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end