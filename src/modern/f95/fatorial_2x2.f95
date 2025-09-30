PROGRAM planejamento_fatorial_2x2
  IMPLICIT NONE
  
  ! Declaração de variáveis:
  INTEGER, PARAMETER :: n_fatores = 2
  INTEGER, PARAMETER :: n_niveis = 2
  INTEGER, PARAMETER :: n_ensaios = 4
  INTEGER :: i, j
  REAL :: respostas(n_ensaios)
  REAL :: efeitos(n_fatores)
  REAL :: interacao
  REAL :: media_geral
  CHARACTER(LEN=20) :: nomes_fatores(n_fatores)
  
  ! Matriz do planejamento fatorial 2²:
  INTEGER, DIMENSION(n_ensaios, n_fatores) :: planejamento
  
  ! Inicialização do planejamento (níveis codificados: -1 = baixo, +1 = alto):
  DATA planejamento / &
    -1, -1, &  ! Ensaio 1: A baixo, B baixo
    +1, -1, &  ! Ensaio 2: A alto, B baixo
    -1, +1, &  ! Ensaio 3: A baixo, B alto
    +1, +1 /   ! Ensaio 4: A alto, B alto
  
  ! Nomes dos fatores:
  nomes_fatores(1) = "Fator A"
  nomes_fatores(2) = "Fator B"
  
  ! Cabeçalho:
  PRINT *, "=========================================="
  PRINT *, "   PLANEJAMENTO FATORIAL 2²"
  PRINT *, "=========================================="
  PRINT *, ""
  
  ! Exibir matriz do planejamento:
  PRINT *, "MATRIZ DO PLANEJAMENTO:"
  PRINT *, "Ensaio   Fator A   Fator B"
  PRINT *, "------   -------   -------"
  
  DO i = 1, n_ensaios
    WRITE(*, '(I6, 4X, I7, 4X, I7)') i, planejamento(i,1), planejamento(i,2)
  END DO
  
  PRINT *, ""
  PRINT *, "Onde: -1 = Nível Baixo, +1 = Nível Alto"
  PRINT *, ""
  
  ! Entrada das respostas:
  PRINT *, "DIGITE AS RESPOSTAS PARA CADA ENSAIO:"
  DO i = 1, n_ensaios
    WRITE(*, '(A, I1, A)') "Resposta para o ensaio ", i, ": "
    READ(*, *) respostas(i)
  END DO
  
  PRINT *, ""
  PRINT *, "=========================================="
  PRINT *, "         RESULTADOS E ANÁLISE"
  PRINT *, "=========================================="
  PRINT *, ""
  
  ! Cálculo da média geral:
  media_geral = SUM(respostas) / REAL(n_ensaios)
  WRITE(*, '(A, F10.4)') "Média geral: ", media_geral
  PRINT *, ""
  
  ! Cálculo dos efeitos principais:
  DO j = 1, n_fatores
    efeitos(j) = 0.0
    DO i = 1, n_ensaios
      efeitos(j) = efeitos(j) + planejamento(i,j) * respostas(i)
    END DO
    efeitos(j) = efeitos(j) / (REAL(n_ensaios) / 2.0)
    WRITE(*, '(A, A, A, F10.4)') "Efeito principal de ", TRIM(nomes_fatores(j)), ": ", efeitos(j)
  END DO
  
  PRINT *, ""
  
  ! Cálculo do efeito de interação A×B: 
  interacao = 0.0
  DO i = 1, n_ensaios
    interacao = interacao + (planejamento(i,1) * planejamento(i,2)) * respostas(i)
  END DO
  interacao = interacao / (REAL(n_ensaios) / 2.0)
  WRITE(*, '(A, F10.4)') "Efeito de interação A×B: ", interacao
  
  PRINT *, ""
  PRINT *, "=========================================="
  PRINT *, "          INTERPRETAÇÃO"
  PRINT *, "=========================================="
  PRINT *, ""
  
  ! Interpretação dos resultados: 
  DO j = 1, n_fatores
    IF (efeitos(j) > 0.0) THEN
      WRITE(*, '(A, A, A)') TRIM(nomes_fatores(j)), ": Efeito POSITIVO ", &
                           "(aumentar o nível melhora a resposta)"
    ELSE IF (efeitos(j) < 0.0) THEN
      WRITE(*, '(A, A, A)') TRIM(nomes_fatores(j)), ": Efeito NEGATIVO ", &
                           "(diminuir o nível melhora a resposta)"
    ELSE
      WRITE(*, '(A, A)') TRIM(nomes_fatores(j)), ": Sem efeito significativo"
    END IF
  END DO
  
  PRINT *, ""
  IF (ABS(interacao) > 0.0) THEN
    PRINT *, "Existe interação entre os fatores A e B"
    IF (interacao > 0.0) THEN
      PRINT *, "Interação SINÉRGICA (os fatores se potencializam)"
    ELSE
      PRINT *, "Interação ANTAGÔNICA (os fatores se anulam parcialmente)"
    END IF
  ELSE
    PRINT *, "Não há interação significativa entre os fatores"
  END IF
  
  PRINT *, ""
  PRINT *, "=========================================="
  PRINT *, "          TABELA RESUMO"
  PRINT *, "=========================================="
  PRINT *, "Ensaio   Fator A   Fator B   Resposta"
  PRINT *, "------   -------   -------   --------"
  
  DO i = 1, n_ensaios
    WRITE(*, '(I6, 4X, I7, 4X, I7, 4X, F8.2)') i, planejamento(i,1), &
          planejamento(i,2), respostas(i)
  END DO
  
  PRINT *, ""
  PRINT *, "FIM DO PROGRAMA"
  
END PROGRAM planejamento_fatorial_2x2