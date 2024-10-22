
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
    li s0, 0
    li s1, 7
loop:
    blt s1, zero, done
    slli t0, s1, 2
    add t0, t0, a0
    lw t1, 0(t0)
    bne t1, a2, count
    add s0, s0 , t0
    j done

count:
    addi s1, s1, -1
    j loop
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
