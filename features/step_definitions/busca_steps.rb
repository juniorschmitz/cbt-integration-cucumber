Dado("que esteja na página inicial") do 
  @search_page.go
end

Quando("buscar pela palavra {string}") do |word|
  @keyword = word
  @search_page.search(word)
end

Então("devo ver resultados válidos na página") do
  expect(@results_page.text).to include @keyword
  expect(@results_page.results).not_to be nil
end
