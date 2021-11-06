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
        SIGNAL Instr(10:7)
        SIGNAL Instr(3:0)
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
            TIMESTAMP 2021 10 28 13 46 57
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
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
            PIN Y(3:0)
            PIN Sel
            PIN I0(3:0) Instr(10:7)
            PIN I1(3:0) Instr(3:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN WrEn
            PIN Clk
            PIN RdReg1(3:0)
            PIN RdReg2(3:0)
            PIN WrReg(3:0)
            PIN WrData(3:0)
            PIN RdData1(23:0)
            PIN RdData2(23:0)
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
        BEGIN BRANCH Instr(23:0)
            WIRE 1808 768 1952 768
            WIRE 1952 768 1984 768
            WIRE 1984 768 1984 976
            WIRE 1984 976 1984 1040
            WIRE 1984 1040 1984 1248
            BEGIN DISPLAY 1952 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 976 2080 976
        BEGIN BRANCH Instr(10:7)
            WIRE 2080 976 2176 976
            WIRE 2176 976 2336 976
            BEGIN DISPLAY 2176 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 1040 2080 1040
        BEGIN BRANCH Instr(3:0)
            WIRE 2080 1040 2176 1040
            WIRE 2176 1040 2336 1040
            BEGIN DISPLAY 2176 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX_rd 2336 1136 R0
            BEGIN DISPLAY 80 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_Regs 2912 1104 R0
            BEGIN DISPLAY 96 -536 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
    END SHEET
END SCHEMATIC
