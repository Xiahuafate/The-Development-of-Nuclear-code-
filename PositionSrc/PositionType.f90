module position_type_module
    implicit none
    PRIVATE

    public :: position 

    type :: position
        real  :: x = 0.0
        real  :: distance = 0.0
    contains
        procedure, pass :: initialize
        procedure, pass :: calculate_distance
        procedure, pass :: clear
    endtype
contains
    subroutine initialize(this,x)
        class(position) :: this
        real            :: x
        
        if (x /= 0) then
            this%x = x
        else
            write(*,*) "the x is error! "
        endif
    ENDSUBROUTINE
    subroutine calculate_distance(this)
        class(position) :: this

        this%distance = abs(this%x - 0.0)
    endsubroutine
    subroutine clear(this)
        class(position) :: this

        this%x = 0.0
        this%distance = 0.0
    endsubroutine   
    
end module position_type_module