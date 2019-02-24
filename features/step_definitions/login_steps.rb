Dado("que eu esteja na tela de login") do
  visit('http://the-internet.herokuapp.com/login')
end

Quando("eu preencho usuario e senha validos") do
  fill_in 'username', with: 'tomsmith'
  fill_in 'password', with: 'SuperSecretPassword!'
end

Quando("clico em login") do
  #click_button 'Login'
  find('button').click #quando nao em id e name
end

Entao("devo acessar o sistema com sucesso") do
	expected_url = 'http://the-internet.herokuapp.com/secure'
	current_url = page.current_url

	expect(current_url).to eq(expected_url)

	success_message = find('#flash').text #id
	expected_message = 'You logged into a secure area!'

	expect(success_message).to include(expected_message)
end

Quando("eu preencho usuario e nao preencho senha") do
  	fill_in 'username', with: 'tomsmith'
end

Entao("deve apresentar uma mensagem de erro") do
  	error_message = find('#flash').text #id
	expected_message = 'Your password is invalid!'

	expect(error_message).to include(expected_message)
end

Entao("os campos devem ser limpos") do
	
	username = find('#username').value
	expect(username).to be_empty

	expect(username).to eq('')
end