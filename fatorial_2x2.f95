program fatorial
  implicit none

  INTEGER, DIMENSION(4, 4) :: a  ! Matriz para armazenar os valores de a11 a a44
  REAL :: y(4)  ! Vetor para armazenar os valores médios das respostas
  REAL :: Xty(4)  ! Vetor para armazenar o resultado da multiplicação de matriz-vetor
  REAL :: V(3)  ! Vetor para armazenar os efeitos calculados

  print*, "Programa Fatorial 2x2"
  print*, "*OBS: Os valores decimais devem ser escritos com pontos ao inves de virgulas"
  print*, 'Entre com os valores medios das respostas para os ensaios:'
  print*, " "
  print*, '(1)='
  read*, y(1)  ! Lê o valor médio da resposta para o ensaio 1
  print*, 'a='
  read*, y(2)  ! Lê o valor médio da resposta para o ensaio a
  print*, 'b='
  read*, y(3)  ! Lê o valor médio da resposta para o ensaio b
  print*, 'ab='
  read*, y(4)  ! Lê o valor médio da resposta para o ensaio ab

  a = RESHAPE([1, 1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1], [4, 4])  ! Define a matriz a com os valores correspondentes

  Xty = MATMUL(a, y)  ! Multiplica a matriz a pelo vetor y

  V(1) = Xty(2) / 2  ! Calcula o efeito principal 1
  V(2) = Xty(3) / 2  ! Calcula o efeito principal 2
  V(3) = Xty(4) / 2  ! Calcula o efeito da interação

  print*, 'Efeitos calculados para o planejamento fatorial 2x2'
  print*, 'Media=', Xty(1) / 4  ! Exibe a média dos resultados
  print*, 'Efeitos Principais'
  print*, '1=', V(1)  ! Exibe o efeito principal 1
  print*, '2=', V(2)  ! Exibe o efeito principal 2
  print*, 'Efeito da interacao'
  print*, '12=', V(3)  ! Exibe o efeito da interação

end program fatorial
