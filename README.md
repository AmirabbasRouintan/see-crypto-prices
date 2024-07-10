# Crypto Prices Script ₿ 💸
A simple script using bash and curl to display cryptocurrency prices from Binance API.

## Features 📊
- Cryptocurrency Price Display: Fetches and displays the current price of various cryptocurrencies from Binance API.
- Real-time Updates: Updates the prices every 5 seconds, providing real-time information.

## How It Works
1. **Fetch Prices:** Uses curl to fetch the current prices of various cryptocurrencies from Binance API.
2. **Display Results:** Prints the fetched prices in a nicely formatted table.

## Requirements 📈
- Bash shell
- curl library (install using `apt-get install -y curl`)
- watch library (install using `apt-get install -y watch`)

## Installation 💻
To install this script, follow these steps:

1. Install the required libraries by running the following commands in your terminal:```sudo apt-get update && sudo apt-get install -y curl watch ```
2. Save the script to a file named ```crypto_prices.sh```
3. Make the script executable by running the command: ```chmod +x crypto_prices.sh```

## Running the Script 💻
To run the script, use the following command:
```watch -n 5 ./crypto_prices.sh```
This will keep updating the prices in real-time, refreshing every 5 seconds.
