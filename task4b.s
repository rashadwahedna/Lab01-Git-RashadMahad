.text
.globl main
main:
    li x5, 0x100
    li x10, 5
    sb x10, 0(x5) #a[0]=5
    li x10, 10
    sb x10, 1(x5) #a[1]=10- offset by 1 byte
    li x10, 15
    sb x10, 2(x5) #a[2]=15
    li x10, 20
    sb x10, 3(x5) #a[3]=20
    li x6, 0x200
    li x11, 100
    sh x11, 0(x6) #b[0]=100
    li x11, 200
    sh x11, 2(x6) #b[1]=200- offset by 2 bytes
    li x11, 300
    sh x11, 4(x6) #b[2]=300
    li x11, 400
    sh x11, 6(x6) #b[3]=400 


    li x5, 0x100 #address of array a
    li x6, 0x200 #address of array b
    li x7, 0x300 #address of array c

    lb x10, 0(x5) #a[0]- a is a char array
    lh x11, 0(x6) #b[0]- b is a short array
    add x12, x10, x11 #a[0]+b[0]
    sw x12, 0(x7) #store at c[0]- c is a unsigned integer array
    
    lb x10, 1(x5) #a[1]- offset of 1
    lh x11, 2(x6) #b[1]- offset of 2
    add x12, x10, x11 #a[1]+b[1]
    sw x12, 4(x7) #store at c[1]- offset of 4
    
    lb x10, 2(x5) #a[2]- offset of 2
    lh x11, 4(x6) #b[2]- offset of 4
    add x12, x10, x11 #a[2]+b[2]
    sw x12, 8(x7) #store at c[2]- offset of 8
    
    lb x10, 3(x5) #a[3]- offset of 3
    lh x11, 6(x6) #b[3]- offset of 6
    add x12, x10, x11 #a[3]+b[3]
    sw x12, 12(x7) #store at c[3]- offset of 12

end:
    j end
