VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL RegDest
        SIGNAL RegWr
        SIGNAL RdData2(15:0)
        SIGNAL RdData1(15:0)
        SIGNAL WrReg(3:0)
        SIGNAL New_PC(5:0)
        SIGNAL Instr(23:0)
        SIGNAL Instr(10:7)
        SIGNAL Instr(3:0)
        SIGNAL Instr(18:15)
        SIGNAL MemWr
        SIGNAL Mem2Reg
        SIGNAL XLXN_75(15:0)
        SIGNAL Instr(23:19)
        SIGNAL Instr(6:5)
        SIGNAL Branch
        SIGNAL ALUOP(2:0)
        SIGNAL CE_NF
        SIGNAL CE_OVF
        SIGNAL CE_ZF
        SIGNAL CE_CF
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(18:16)
        SIGNAL Instr(4:0)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL OUTW0(15:0)
        SIGNAL DataOut(15:0)
        SIGNAL Instr(15:12)
        SIGNAL CF
        SIGNAL NF
        SIGNAL OVF
        SIGNAL ZF
        SIGNAL ALUOUT(15:0)
        SIGNAL Instr(8:4)
        PORT Input Clk
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output OUTW0(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2022 1 12 10 33 3
            LINE N 400 -32 336 -32 
            RECTANGLE N 336 68 400 92 
            LINE N 400 80 336 80 
            RECTANGLE N 336 20 400 44 
            LINE N 400 32 336 32 
            LINE N -32 144 32 144 
            RECTANGLE N -32 136 32 152 
            RECTANGLE N 336 136 400 152 
            LINE N 400 144 336 144 
            RECTANGLE N 32 -260 336 188 
            LINE N 400 -224 336 -224 
            LINE N 400 -176 336 -176 
            LINE N 400 -128 336 -128 
            LINE N 400 -80 336 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2021 10 14 14 32 7
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2021 10 28 13 25 24
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2021 10 28 13 26 13
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 1 12 10 54 39
            RECTANGLE N 64 -484 384 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 64 -448 0 -448 
            LINE N 64 -400 0 -400 
            RECTANGLE N 384 -460 448 -436 
            LINE N 384 -448 448 -448 
            RECTANGLE N 384 -412 448 -388 
            LINE N 384 -400 448 -400 
            RECTANGLE N 0 -348 64 -324 
            LINE N 64 -336 0 -336 
            RECTANGLE N 0 -284 64 -260 
            LINE N 64 -272 0 -272 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 1 11 14 10 52
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2021 1 2 17 33 14
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 1 11 15 42 13
            RECTANGLE N 0 -684 64 -660 
            RECTANGLE N 64 -704 320 -16 
            LINE N 64 -672 0 -672 
            RECTANGLE N 0 -588 64 -564 
            LINE N 64 -576 0 -576 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            LINE N 320 -384 384 -384 
            RECTANGLE N 320 -348 384 -324 
            LINE N 320 -336 384 -336 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 1 12 11 3 4
            RECTANGLE N 64 -640 320 0 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -608 384 -608 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            LINE N 320 -560 384 -560 
            LINE N 320 -512 384 -512 
            LINE N 320 -464 384 -464 
        END BLOCKDEF
        BEGIN BLOCK U_MUX_wd MUX2V4
            PIN Y(3:0) WrReg(3:0)
            PIN Sel RegDest
            PIN I0(3:0) Instr(10:7)
            PIN I1(3:0) Instr(3:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrEn RegWr
            PIN Clk Clk
            PIN RdReg1(3:0) Instr(18:15)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
            PIN WrData(15:0) XLXN_75(15:0)
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN Branch Branch
            PIN PC(5:0) PC(5:0)
            PIN Offset(4:0) Instr(4:0)
            PIN BranchType(2:0) Instr(18:16)
            PIN New_PC(5:0) New_PC(5:0)
            PIN NF NF
            PIN OVF OVF
            PIN ZF ZF
            PIN CF CF
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK U_ctrl ctrl
            PIN OP(4:0) Instr(23:19)
            PIN IOR_Funct(1:0) Instr(6:5)
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN Branch Branch
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK U_MUX_Data MUX2V16
            PIN Sel Mem2Reg
            PIN I0(15:0) ALUOUT(15:0)
            PIN I1(15:0) DataOut(15:0)
            PIN Y(15:0) XLXN_75(15:0)
        END BLOCK
        BEGIN BLOCK U_Data_Mem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) DataOut(15:0)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN Clk Clk
            PIN CE_NF CE_NF
            PIN CE_ZF CE_ZF
            PIN CE_OVF CE_OVF
            PIN CE_CF CE_CF
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN IOR_lit5(4:0) Instr(4:0)
            PIN BTST_bit4(3:0) Instr(15:12)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN NF NF
            PIN Y(15:0) ALUOUT(15:0)
            PIN OVF OVF
            PIN ZF ZF
            PIN CF CF
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH RegDest
            WIRE 2000 1664 2096 1664
            BEGIN DISPLAY 2000 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX_wd 2096 1696 R0
            BEGIN DISPLAY 64 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(15:0)
            WIRE 3072 1232 3216 1232
            WIRE 3216 1232 3344 1232
            WIRE 3344 1216 3376 1216
            WIRE 3344 1216 3344 1232
            BEGIN DISPLAY 3216 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_PC 368 1216 R0
            BEGIN DISPLAY 64 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 336 1120 368 1120
        END BRANCH
        BEGIN BRANCH New_PC(5:0)
            WIRE 80 640 80 928
            WIRE 80 928 80 1184
            WIRE 80 1184 368 1184
            WIRE 80 640 336 640
            BEGIN DISPLAY 80 928 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:0)
            WIRE 1472 992 1648 992
            WIRE 1648 992 1712 992
            WIRE 1712 992 1712 1312
            WIRE 1712 1312 1712 1392
            WIRE 1712 1392 1712 1536
            WIRE 1712 1536 1712 1600
            WIRE 1712 1600 1712 1808
            WIRE 1712 1808 1712 2032
            WIRE 1712 2032 1712 2128
            WIRE 1712 2128 1712 2208
            WIRE 1712 496 1712 528
            WIRE 1712 528 1712 576
            WIRE 1712 576 1712 992
            BEGIN DISPLAY 1648 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1536 1808 1536
        BEGIN BRANCH Instr(10:7)
            WIRE 1808 1536 1920 1536
            WIRE 1920 1536 2096 1536
            BEGIN DISPLAY 1920 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1600 1808 1600
        BEGIN BRANCH Instr(3:0)
            WIRE 1808 1600 1920 1600
            WIRE 1920 1600 2096 1600
            BEGIN DISPLAY 1920 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1392 1808 1392
        BUSTAP 1712 1312 1808 1312
        IOMARKER 336 1120 Clk R180 28
        BEGIN INSTANCE U_ctrl 1936 2704 R0
            BEGIN DISPLAY 80 -776 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1712 2032 1808 2032
        BEGIN BRANCH Instr(23:19)
            WIRE 1808 2032 1824 2032
            WIRE 1824 2032 1936 2032
            BEGIN DISPLAY 1824 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 2128 1808 2128
        BEGIN BRANCH Instr(6:5)
            WIRE 1808 2128 1824 2128
            WIRE 1824 2128 1936 2128
            BEGIN DISPLAY 1824 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2320 2032 2384 2032
            BEGIN DISPLAY 2384 2032 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2320 2096 2384 2096
            BEGIN DISPLAY 2384 2096 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2320 2160 2384 2160
            BEGIN DISPLAY 2384 2160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2320 2224 2384 2224
            BEGIN DISPLAY 2384 2224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2320 2320 2384 2320
            BEGIN DISPLAY 2384 2320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2320 2368 3056 2368
            WIRE 3056 2368 3296 2368
            WIRE 3296 1472 3376 1472
            WIRE 3296 1472 3296 2368
            BEGIN DISPLAY 3056 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2320 2480 2384 2480
            BEGIN DISPLAY 2384 2480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2320 2544 2384 2544
            BEGIN DISPLAY 2384 2544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2320 2608 2384 2608
            BEGIN DISPLAY 2384 2608 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2320 2672 2384 2672
            BEGIN DISPLAY 2384 2672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 368 496 R0
            BEGIN DISPLAY 48 -344 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(5:0)
            WIRE 752 1120 784 1120
            WIRE 768 640 784 640
            WIRE 784 640 784 800
            WIRE 784 800 784 992
            WIRE 784 992 784 1120
            BEGIN DISPLAY 784 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1088 1024 R0
            BEGIN DISPLAY 48 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 784 992 880 992
        BEGIN BRANCH PC(5:1)
            WIRE 880 992 976 992
            WIRE 976 992 1088 992
            BEGIN DISPLAY 976 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 768 464 864 464
            BEGIN DISPLAY 864 464 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BUSTAP 1712 576 1616 576
        BEGIN BRANCH Instr(18:16)
            WIRE 768 576 1024 576
            WIRE 1024 576 1616 576
            BEGIN DISPLAY 1024 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 528 1616 528
        BEGIN BRANCH Instr(4:0)
            WIRE 768 528 1040 528
            WIRE 1040 528 1616 528
            BEGIN DISPLAY 1040 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1808 1312 2032 1312
            WIRE 2032 1312 2208 1312
            WIRE 2208 1312 2208 1344
            WIRE 2208 1344 2624 1344
            BEGIN DISPLAY 2032 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_75(15:0)
            WIRE 2608 1648 2624 1648
            WIRE 2608 1648 2608 2048
            WIRE 2608 2048 5296 2048
            WIRE 5232 1808 5296 1808
            WIRE 5296 1808 5296 2048
        END BRANCH
        BEGIN BRANCH WrReg(3:0)
            WIRE 2480 1536 2560 1536
            WIRE 2560 1536 2624 1536
            BEGIN DISPLAY 2560 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 1808 1392 2048 1392
            WIRE 2048 1392 2208 1392
            WIRE 2208 1392 2208 1408
            WIRE 2208 1408 2624 1408
            BEGIN DISPLAY 2048 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2464 1280 2624 1280
            BEGIN DISPLAY 2464 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2448 1232 2624 1232
            BEGIN DISPLAY 2448 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2624 1680 R0
            BEGIN DISPLAY 64 -568 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_MUX_Data 4848 1968 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_Data_Mem 4112 1504 R0
            BEGIN DISPLAY 80 -472 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3888 1152 4112 1152
            BEGIN DISPLAY 3888 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 4048 1216 4112 1216
        END BRANCH
        BEGIN BRANCH INW1(15:0)
            WIRE 4048 1280 4112 1280
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3888 1344 4112 1344
            BEGIN DISPLAY 3888 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4688 1808 4720 1808
            WIRE 4720 1808 4848 1808
            BEGIN DISPLAY 4720 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4048 1216 INW0(15:0) R180 28
        IOMARKER 4048 1280 INW1(15:0) R180 28
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4544 1152 4576 1152
        END BRANCH
        IOMARKER 4576 1152 OUTW0(15:0) R0 28
        BEGIN BRANCH DataOut(15:0)
            WIRE 4544 1472 4624 1472
            WIRE 4624 1472 4624 1632
            WIRE 4624 1632 4624 1872
            WIRE 4624 1872 4848 1872
            BEGIN DISPLAY 4624 1632 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3376 1504 R0
            BEGIN DISPLAY 80 -728 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH CE_CF
            WIRE 3296 1152 3376 1152
            BEGIN DISPLAY 3296 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 3296 1344 3376 1344
            BEGIN DISPLAY 3296 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:12)
            WIRE 3296 1408 3376 1408
            BEGIN DISPLAY 3296 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3296 896 3376 896
            BEGIN DISPLAY 3296 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 3296 960 3376 960
            BEGIN DISPLAY 3296 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 3296 1024 3376 1024
            BEGIN DISPLAY 3296 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 3296 1088 3376 1088
            BEGIN DISPLAY 3296 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CF
            WIRE 768 416 2080 416
            WIRE 2080 416 3776 416
            WIRE 3776 416 3776 1040
            WIRE 3760 1040 3776 1040
            BEGIN DISPLAY 2080 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH NF
            WIRE 768 272 2080 272
            WIRE 2080 272 3984 272
            WIRE 3984 272 3984 896
            WIRE 3760 896 3984 896
            BEGIN DISPLAY 2080 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVF
            WIRE 768 320 2080 320
            WIRE 2080 320 3920 320
            WIRE 3920 320 3920 944
            WIRE 3760 944 3920 944
            BEGIN DISPLAY 2080 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 768 368 2080 368
            WIRE 2080 368 3856 368
            WIRE 3856 368 3856 992
            WIRE 3760 992 3856 992
            BEGIN DISPLAY 2080 368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 3072 1280 3104 1280
            WIRE 3104 1280 3216 1280
            WIRE 3216 1280 3376 1280
            WIRE 3104 1280 3104 1600
            WIRE 3104 1600 4096 1600
            WIRE 4096 1472 4112 1472
            WIRE 4096 1472 4096 1600
            BEGIN DISPLAY 3216 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOUT(15:0)
            WIRE 3760 1472 3840 1472
            WIRE 3840 1472 3840 1936
            WIRE 3840 1936 4112 1936
            WIRE 4112 1936 4848 1936
            BEGIN DISPLAY 4112 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1808 1808 1808
        BEGIN BRANCH Instr(8:4)
            WIRE 1808 1808 2784 1808
            WIRE 2784 1808 3808 1808
            WIRE 3808 1408 3808 1808
            WIRE 3808 1408 4112 1408
            BEGIN DISPLAY 2784 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
