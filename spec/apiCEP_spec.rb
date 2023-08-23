require "rspec"
require "httparty"

RSpec.describe "API Test" do
  it "Validar logradouro" do
    @cep = "13060872"
    response = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json")

    expect(response.parsed_response["logradouro"]).to eq("Rua Doutor Sylvio Carvalhaes") # Verificar o logradouro
  end

  it "Validar o DDD" do
    @cep = "13060872"
    response = HTTParty.get("https://viacep.com.br/ws/#{@cep}/json")

    expect(response.parsed_response["ddd"]).to eq("19") # Verificar se o DDD é igual ao esperado
  end
end
