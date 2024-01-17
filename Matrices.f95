Program MyMatrix
    implicit none
	! Declaration of Variables & Format
    integer :: i, j, MatA(3,3), MatB(3,3)
    real :: detA, invA(3,3), detB, invB(3,3)

	! Opening & Reading External FileS
    open(1, File="Matrixes.txt"); open(2, File="Output.txt");
    read(1, *) ((MatA(i,j),j=1,3),i=1,3), ((MatB(i,j),j=1,3),i=1,3)

	! Display MatA
    write(2, *) "                   MATRIX A"
    do i = 1, 3
        write(2, *) (MatA(i,j), j=1,3)
    end do
    call Determinant(MatA, detA)
    write(2, *) " "; write(2, *) "               Inverse of MatA";
    call Inverse(MatA, detA, invA)

    write(2, *) " "; write(2, *) " "

    ! Display MatB
    write(2, *) "                   MATRIX B"
    do i = 1, 3
        write(2, *) (MatB(i,j), j=1,3)
    end do
    call Determinant(MatB, detB)
    write(2, *) " "; write(2, *) "                Inverse of MatB";
    call Inverse(MatB, detB, invB)
    
end program MyMatrix

subroutine Cofactor(i,j,mat,cof)
    implicit none
    integer:: i,j,a,b,l,k,n,m, mat(3,3), minor(2,2); real :: cof

    ! Generate Minor of mat(i,j)
    n=i+1; m=j+1
    if ( n > 3 ) then
        n = 1
    end if
    if ( m > 3 ) then
        m = 1
    end if
    a=n; b=m; l= a+1; k= b+1
    if ( l > 3 ) then
        l = 1
    end if
    if ( k > 3 ) then
        k = 1
    end if
    
    minor(1,1) = mat(a,b); minor(1,2) = mat(a,k); minor(2,1) = mat(l,b); minor(2,2) = mat(l,k)
    cof = minor(1,1)*minor(2,2) - minor(2,1)*minor(1,2)
end subroutine Cofactor

subroutine Determinant(mat, det)
    integer :: mat(3,3); real :: det, cof11, cof12, cof13
    call Cofactor(3,1,mat,cof11); call Cofactor(3,2,mat,cof12); call Cofactor(3,3,mat,cof13)    
    det = mat(3,1)*cof11 + mat(3,2)*cof12 + mat(3,3)*cof13
end subroutine Determinant

subroutine Inverse(Mat, det, inv)
    integer :: i, j, Mat(3,3)
    real :: adj(3,3), inv(3,3), co11, co12, co13, co21, co22, co23, co31, co32, co33

    ! Adjoint of Matrix
    call Cofactor(1,1,Mat,co11); call Cofactor(1,2,Mat,co12); call Cofactor(1,3,Mat,co13)
    call Cofactor(2,1,Mat,co21); call Cofactor(2,2,Mat,co22); call Cofactor(2,3,Mat,co23)
    call Cofactor(3,1,Mat,co31); call Cofactor(3,2,Mat,co32); call Cofactor(3,3,Mat,co33)
    adj = reshape((/co11, co12, co13, co21, co22, co23, co31, co32, co33/), (/3,3/)) ! transposed by default

    ! Inverse of MatA
    inv = (adj / det)
    do i = 1, 3
        write(2, *) (inv(i,j), j=1,3)
    end do
end subroutine Inverse