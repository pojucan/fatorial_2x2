C     ------------------------------------------------------------------
C     Programa Fatorial
C     Versao Beta (17/11/2008)
C     Autor: Pojucan, M.M.S.
C     Licenca:
C     O usuário pode usar desde que não seja para fins lucrativos. Pode
C     alterar o código fonte, desde que comunique previamente o autor.
C     ------------------------------------------------------------------
      PROGRAM FATORIAL
      IMPLICIT NONE
C
      INTEGER a11, a12, a13, a14, a22, a24, a33, a34
      INTEGER a21, a23, a31, a32, a41, a42, a43, a44
C
      DATA a11/1/, a12/1/, a13/1/, a14/1/
      DATA a21/-1/, a22/1/, a23/-1/, a24/1/
      DATA a31/-1/, a32/-1/, a33/1/, a34/1/
      DATA a41/1/, a42/-1/, a43/-1/, a44/1/
C
      REAL y1, y2, y3, y4
      REAL Xty1, Xty2, Xty3, Xty4
      REAL Vm, V1, V2, V3
C
      WRITE (*,*) "Programa Fatorial 2x2"
C
      WRITE (*,*) "*OBS: Os valores decimais devem ser escritos com
     #pontos ao inves de virgulas"
      WRITE (*,*) 'Entre com os valores medios das respostas para os
     #ensaios:'
C
      WRITE (*,*) '(1)='; READ (*,*) y1
      WRITE (*,*) 'a=';READ (*,*) y2
      WRITE (*,*) 'b=';READ (*,*) y3
      WRITE (*,*) 'ab=';READ (*,*) y4
C
      Xty1=(a11*y1+a12*y2+a13*y3+a14*y4)
      Xty2=(a21*y1+a22*y2+a23*y3+a24*y4)
      Xty3=(a31*y1+a32*y2+a33*y3+a34*y4)
      Xty4=(a41*y1+a42*y2+a43*y3+a44*y4)
C
      Vm=Xty1/4
      V1=Xty2/2
      V2=Xty3/2
      V3=Xty4/2
C
      WRITE (*,*) 'Efeitos calculados para o planejamento fatorial 2x2'
      WRITE (*,*) 'Media=', Vm
      WRITE (*,*) 'Efeitos Principais'
      WRITE (*,*) '1=', V1
      WRITE (*,*) '2=', V2
      WRITE (*,*) 'Efeito da interacao'
      WRITE (*,*) '12=', V3
      END
