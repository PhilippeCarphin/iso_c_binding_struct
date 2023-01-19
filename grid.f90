module grid

    use, intrinsic :: iso_c_binding
    implicit none

    ! This one allows users of the module to use TTile
    include "grid.hf"

    interface
        integer(C_INT) FUNCTION c_print_tile(t) BIND(C, name="print_tile")
            use, intrinsic :: iso_c_binding
            implicit none
            ! The definition at the top seems to have no effect here
            ! so we have to repeat it.
            include "grid.hf"
            TYPE(TTILE) :: t
        END FUNCTION
        integer(C_INT) FUNCTION c_print_grid(c_grid_ptr) BIND(C, name="print_grid")
            use, intrinsic :: iso_c_binding
            implicit none
            include "grid.hf"
            TYPE(TGRID) :: c_grid_ptr
        END FUNCTION
    end interface
end module
