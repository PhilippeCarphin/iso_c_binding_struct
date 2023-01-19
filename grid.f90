module grid

    use, intrinsic :: iso_c_binding
    implicit none

    ! This one allows users of the module to use TTile
    TYPE, BIND(C) :: TTile
        INTEGER(C_INT) I0, I1
        INTEGER(C_INT) J0, J1
        INTEGER(C_INT) HI, HJ
    END TYPE

    interface
        integer(C_INT) FUNCTION c_print_tile(t) BIND(C, name="print_tile")
            use, intrinsic :: iso_c_binding
            implicit none
            ! The definition at the top seems to have no effect here
            ! so we have to repeat it.
            TYPE, BIND(C) :: TTile
                INTEGER(C_INT) I0, I1
                INTEGER(C_INT) J0, J1
                INTEGER(C_INT) HI, HJ
            END TYPE
            TYPE(TTILE) :: t
        END FUNCTION
    end interface
end module
