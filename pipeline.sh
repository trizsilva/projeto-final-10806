#!/bin/bash

echo "=== Relatório gerado a: $(date '+%Y-%m-%d %H:%M:%S') ===" > relatorio.log

cambio=$(curl -s "https://api.frankfurter.dev/v1/latest?from=EUR&to=USD" | jq -r '.rates.USD')

citacao=$(python3 scraper.py)

echo "Câmbio EUR para USD: $cambio" >> relatorio.log
echo "Citação do dia: $citacao" >> relatorio.log
echo "-----------------------------------------------" >> relatorio.log

