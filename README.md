## Projeto: Planejamento Fatorial 2²

### Evolução do Código

#### Versão Legacy (Fortran 77)
- **Localização**: ```src/legacy/f77/fatorial_2x2.f```
- **Características**: Não possui uma interface tão intuitiva
- **Compilação**: ```gfortran fatorial_2x2.f -o fatorial_2x2```

#### Versão Moderna (Fortran 95)  
- **Localização**: `src/modern/f95/fatorial_2x2.f95`
- **Melhorias**: Mostra previamente a matriz de experimento om legenda. Permite entradas dos valores do experimento de forma mais intuitiva, entrega a média geral, o Efeito principal do fator A e do fator B, bem como sua interação. En seguida ele interpreta, indica a sinergia entre fatores ou não, e mostra a tabela resumo com a matriz reposta ao final.
- **Compilação**: ```gfortran fatorial_2x2.f95 -o fatorial_2x2```

### Uso:

**Instalando o fortran:**

```bash
sudo apt install gfortran
```

Posteriormente, compila os códigos como é mostrado acima. É bem simples!

