.text
.globl main
main:
    li x10, 5  #a
    li x11, 0  #b

    addi x10, x11, 32 #a = b + 32

    add x12, x10, x11 #d = (a + b)
    addi x12, x12, -5 #d = (a + b) - 5

    sub x13, x10, x12 #e = (a - d)
    sub x14, x11, x10 #temp = (b - a)
    add x13, x13, x14 #e = (a - d) + temp
    add x13, x13, x12 #e = (((a - d) + (b - a)) + d)

    add x13, x13, x11
    add x13, x13, x10
    add x13, x13, x12 #e = a + b + d + eS
    
end:
    j end