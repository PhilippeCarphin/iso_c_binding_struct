program main

    use grid

    integer :: ierr
    TYPE(TTile) :: t

    t%I0 = 1
    t%I1 = 2

    t%J0 = 1336
    t%J1 = 42

    t%HI = 1
    t%HJ = 1

    ierr = c_print_tile(t)

end program
