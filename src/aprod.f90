!c--- This file is from hypoDD by Felix Waldhauser ---------
!c-------------------------Modified by Haijiang Zhang-------
!c Multiply a matrix by a vector
!c  Version for use with sparse matrix specified by
!c  output of subroutine sparse for use with LSQR

subroutine aprod(mode, m, n, x, y, leniw, lenrw, iw, rw)

  implicit none

  !c	Parameters:
  integer	mode		! ==1: Compute  y = y + a*x
  ! 	y is altered without changing x
  ! ==2: Compute  x = x + a(transpose)*y
  !	x is altered without changing y
  integer	m, n		! Row and column dimensions of a
  real	x(n), y(m)	! Input vectors
	integer(8) :: leniw
	integer(8) lenrw ! Yichen
  integer	iw(leniw)	! Integer work vector containing:
  ! iw[1]  Number of non-zero elements in a
  ! iw[2:iw[1]+1]  Row indices of non-zero elements
  ! iw[iw[1]+2:2*iw[1]+1]  Column indices
  real	rw(lenrw)	! [1..iw[1]] Non-zero elements of a

  !c	Local variables:
  integer i1
	integer(8) j1 
	integer(8) k
	integer(8) kk ! Yichen

  !c	set the ranges the indices in vector iw

  kk=lenrw
  i1=0
  j1=kk

  !c	main iteration loop

  do k = 1,kk

    if (mode.eq.1) then

      !c	compute  y = y + a*x

      y(iw(i1+k)) = y(iw(i1+k)) + rw(k)*x(iw(j1+k))

    else

      !c	compute  x = x + a(transpose)*y

      x(iw(j1+k)) = x(iw(j1+k)) + rw(k)*y(iw(i1+k))

    endif
  enddo

  !  100	continue

  return
  end
