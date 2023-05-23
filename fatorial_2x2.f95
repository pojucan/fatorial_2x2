program fatorial
  implicit none

  INTEGER, DIMENSION(4, 4) :: a
  REAL :: y(4)
  REAL :: Xty(4)
  REAL :: V(3)
  
  print*, "Programa Fatorial 2x2"
  print*, "*OBS: Os valores decimais devem ser escritos com pontos ao inves de virgulas"
  print*, 'Entre com os valores medios das respostas para os ensaios:'
  print*,
  print*, '(1)='
  read*, y(1)
  print*, 'a='
  read*, y(2)
  print*, 'b='
  read*, y(3)
  print*, 'ab='
  read*, y(4)

  a = RESHAPE([1, 1, 1, 1, -1, 1, -1, 1, -1, -1, 1, 1, 1, -1, -1, 1], [4, 4])

  Xty = MATMUL(a, y)

  V(1) = Xty(2) / 2
  V(2) = Xty(3) / 2
  V(3) = Xty(4) / 2

  print*, 'Efeitos calculados para o planejamento fatorial 2x2'
  print*, 'Media=', Xty(1) / 4
  print*, 'Efeitos Principais'
  print*, '1=', V(1)
  print*, '2=', V(2)
  print*, 'Efeito da interacao'
  print*, '12=', V(3)

end program fatorial
