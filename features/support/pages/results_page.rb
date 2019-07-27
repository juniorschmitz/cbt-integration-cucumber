class ResultsPage < BasePage
  
  def results
    find_all("div.g")
  end
end
