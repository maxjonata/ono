use dotenv::dotenv;
use std::env;

fn main() {
    // Carregar as variáveis do arquivo .env
    dotenv().ok();

    // Acessar a variável de ambiente OPENAI_API_KEY
    let api_key = env::var("OPENAI_API_KEY").expect("Chave de API não encontrada");

    println!("A chave da API é: {}", api_key);
}