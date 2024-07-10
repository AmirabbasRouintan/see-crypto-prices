#!/bin/bash

get_price() {
    price=$(curl -s "https://api.binance.com/api/v3/ticker/price?symbol=$1USDT" | jq -r .price)
    printf "%.3f" $price
}

######## Get prices ########
btc=$(get_price BTC)
eth=$(get_price ETH)
arpa=$(get_price ARPA)
ada=$(get_price ADA)
#--------------------------#

term_width=$(tput cols)

table_width=38

print_centered() {
    local text="$1"
    local padding=$(( (term_width - ${#text}) / 2 ))
    printf "%*s%s\n" $padding '' "$text"
}

print_centered "┌──────────────────────────────────┐"
print_centered "│    Cryptocurrency Prices         │"
print_centered "├──────────────┬───────────────────┤"
print_centered "│     Coin     │   Price (USDT)    │"
print_centered "├──────────────┼───────────────────┤"
print_centered "│     BTC      │ ${btc}         │"
print_centered "│     ETH      │ ${eth}          │"
print_centered "│     ARPA     │ ${arpa}             │"
print_centered "│     ADA      │ ${ada}             │"
print_centered "└──────────────┴───────────────────┘"
