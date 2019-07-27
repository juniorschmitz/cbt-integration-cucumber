class SearchPage < BasePage
  def go
    visit "/"
  end

  def search(text)
    find(".gLFyf.gsfi").set text
    click_button "Pesquisa Google"
  end
  
  def alert
    find(".alert").text
  end
end
