VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL New_PC(5:0)
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL RegDest
        SIGNAL Instr(3:0)
        SIGNAL Instr(10:7)
        SIGNAL XLXN_26
        SIGNAL XLXN_27(15:0)
        SIGNAL XLXN_28
        SIGNAL XLXN_29(15:0)
        SIGNAL XLXN_30
        SIGNAL XLXN_31(3:0)
        SIGNAL XLXN_32(3:0)
        SIGNAL RegWr
        SIGNAL ALUOP(1:0)
        SIGNAL RdData2(15:0)
        SIGNAL RdData1(15:0)
        SIGNAL WrReg(3:0)
        SIGNAL Instr(8:5)
        PORT Input Clk
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 10 14 14 31 51
            LINE N 0 -224 64 -224 
            RECTANGLE N 0 -232 64 -216 
            RECTANGLE N 320 -88 384 -72 
            LINE N 384 -80 320 -80 
            RECTANGLE N 64 -256 320 -20 
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
            TIMESTAMP 2021 12 15 11 13 55
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
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(5:0) PC(5:0)
            PIN New_PC(5:0) New_PC(5:0)
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK U_MUX_rd MUX2V4
            PIN Y(3:0) WrReg(3:0)
            PIN Sel RegDest
            PIN I0(3:0) Instr(10:7)
            PIN I1(3:0) Instr(3:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrData(15:0)
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN RdReg1(3:0) Instr(8:5)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_New_PC 624 448 R0
            BEGIN DISPLAY 48 -344 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 624 752 R0
            BEGIN DISPLAY 64 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 592 656 624 656
        END BRANCH
        IOMARKER 592 656 Clk R180 28
        BEGIN BRANCH New_PC(5:0)
            WIRE 336 224 624 224
            WIRE 336 224 336 464
            WIRE 336 464 336 720
            WIRE 336 720 624 720
            BEGIN DISPLAY 336 464 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(5:0)
            WIRE 1008 368 1120 368
            WIRE 1120 368 1120 496
            WIRE 1120 496 1120 656
            WIRE 1120 656 1120 768
            WIRE 1120 768 1120 880
            WIRE 1008 656 1120 656
            BEGIN DISPLAY 1120 496 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1424 800 R0
            BEGIN DISPLAY 48 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1120 768 1216 768
        BEGIN BRANCH PC(5:1)
            WIRE 1216 768 1312 768
            WIRE 1312 768 1424 768
            BEGIN DISPLAY 1312 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2768 704 2848 704
            WIRE 2848 704 2864 704
            BEGIN DISPLAY 2848 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2240 1136 2288 1136
            WIRE 2288 1136 2336 1136
            BEGIN DISPLAY 2288 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX_rd 2336 1168 R0
            BEGIN DISPLAY 64 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(23:0)
            WIRE 1808 768 1920 768
            WIRE 1920 768 1984 768
            WIRE 1984 768 1984 784
            WIRE 1984 784 1984 848
            WIRE 1984 848 1984 1008
            WIRE 1984 1008 1984 1072
            WIRE 1984 1072 1984 1248
            BEGIN DISPLAY 1920 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 1072 2080 1072
        BEGIN BRANCH Instr(3:0)
            WIRE 2080 1072 2160 1072
            WIRE 2160 1072 2336 1072
            BEGIN DISPLAY 2160 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 1008 2080 1008
        BEGIN BRANCH Instr(10:7)
            WIRE 2080 1008 2144 1008
            WIRE 2144 1008 2336 1008
            BEGIN DISPLAY 2144 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 784 2080 784
        BUSTAP 1984 848 2080 848
        BEGIN INSTANCE U_Regs 2864 1152 R0
            BEGIN DISPLAY 64 -568 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegWr
            WIRE 2704 752 2784 752
            WIRE 2784 752 2864 752
            BEGIN DISPLAY 2784 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3536 992 3584 992
            WIRE 3584 992 3648 992
            BEGIN DISPLAY 3584 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 3312 752 3456 752
            WIRE 3456 752 3584 752
            BEGIN DISPLAY 3456 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(15:0)
            WIRE 3312 704 3456 704
            WIRE 3456 704 3584 704
            BEGIN DISPLAY 3456 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(3:0)
            WIRE 2720 1008 2800 1008
            WIRE 2800 1008 2864 1008
            BEGIN DISPLAY 2800 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(8:5)
            WIRE 2080 784 2368 784
            WIRE 2368 784 2464 784
            WIRE 2464 784 2464 816
            WIRE 2464 816 2864 816
            BEGIN DISPLAY 2368 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 2080 848 2368 848
            WIRE 2368 848 2464 848
            WIRE 2464 848 2464 880
            WIRE 2464 880 2864 880
            BEGIN DISPLAY 2368 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
