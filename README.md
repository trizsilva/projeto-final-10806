# Projeto Final — Pipeline de Extração de Dados (ETL)
## UFCD 10806

Pipeline automatizado em Bash que recolhe diariamente:
- O câmbio EUR/USD atual, via API da Frankfurter
- Uma citação do dia, via web scraping (script Python)

Ambos os valores são registados em `relatorio.log`, com data e hora de execução.

## Ficheiros

- `pipeline.sh` — script principal em Bash; orquestra todo o processo
- `scraper.py` — script Python de web scraping da citação
- `relatorio.log` — registo das execuções do pipeline
- `.gitignore` — exclui ficheiros de sistema operativo

## Ferramentas utilizadas

bash, curl, jq, python3, git, gh

## Como executar

```bash
chmod +x pipeline.sh
./pipeline.sh
```

O resultado é adicionado (`>>`) ao ficheiro `relatorio.log`, preservando o histórico de execuções anteriores.

## Autora

Beatriz Silva
