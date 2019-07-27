    
#language:pt

@busca
Funcionalidade: Busca
    Para que eu possa verificar o funcionamento de uma busca
    Sendo um usuário do Google
    Posso pesquisar palavras na página inicial
    
    @minha_busca
    Cenario: Busca por palavra

        Dado que esteja na página inicial
        Quando buscar pela palavra "potato"
        Então devo ver resultados válidos na página
