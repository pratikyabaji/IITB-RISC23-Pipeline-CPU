
# IITB-RISC-23

**IITB-RISC Instruction Set Architecture**

*IITB-RISC*  is  a  16-bit  very  simple  computer  developed  for  the  teaching  that  is  based  on  the  Little Computer  Architecture.  The  *IITB-RISC-23*  is  an  8-register,  16-bit  computer  system.  It  has  8  general- purpose  registers  (R0  to  R7).  Register  R0  is  always  stores  Program  Counter.  All  addresses  are  byte addresses and instructions. Always it fetches two bytes for instruction and data. This architecture uses condition code register which has two flags Carry flag ( *C* ) and Zero flag (*Z*). The *IITB-RISC-23* is very simple,  but  it  is  general  enough  to  solve  complex  problems.  The  architecture  allows  predicated instruction execution and multiple load and store execution. There are three machine-code instruction formats (R, I, and J type) and a total of 14 instructions. They are illustrated in the figure below. 

**R** Type Instruction format 



|Opcode (4 bit) |Register A (RA) (3 bit) |Register B (RB) (3-bit) |Register C (RC) (3-bit) |Comple -ment (1 bit) |Condition (CZ) (2 bit) |
| :-: | :-: | :-: | :-: | :-: | :-: |

**I** Type Instruction format 



|Opcode (4 bit) |Register A (RA) (3 bit) |Register C (RC) (3-bit) |Immediate (6 bits signed) |
| :-: | :-: | :-: | :- |

**J** Type Instruction format 



|Opcode (4 bit) |Register A (RA) (3 bit) |Immediate (9 bits signed) |
| :-: | :-: | :- |

**Instructions Encoding:** 

ADA:   ADC:   ADZ: AWC: ACA: ACC: ACZ: ACW: 

|00\_01 |RA |RB |RC |0 |00 |
| - | - | - | - | - | - |
|00\_01 |RA |RB |RC |0 |10 |
|00\_01 |RA |RB |RC |0 |01 |
|00\_01 |RA |RB |RC |0 |11 |
|00\_01 |RA |RB |RC |1 |00 |
|00\_01 |RA |RB |RC |1 |10 |
|00\_01 |RA |RB |RC |1 |01 |
|00\_01 |RA |RB |RC |1 |11 |
|00\_00 |RA |RB |6 bit Immediate |
|00\_10 |RA |RB |RC |0 |00 |
|00\_10 |RA |RB |RC |0 |10 |
|00\_10 |RA |RB |RC |0 |01 |
|00\_10 |RA |RB |RC |1 |00 |
|00\_10 |RA |RB |RC |1 |10 |
|00\_10 |RA |RB |RC |1 |01 |
|00\_11 |RA |9 bit Immediate |
|01\_00 |RA |RB |6 bit Immediate |
|01\_01 |RA |RB |6 bit Immediate |
|01\_10 |RA |0 + 8 bits corresponding to Reg R0 to R7 (left to right) |
|01\_11 |RA |0 + 8 bits corresponding to Reg R0 to R7 (left to right) |
|10\_00 |RA |RB |6 bit Immediate |
|10\_01 |RA |RB |6 bit Immediate |
|10\_01 |RA |RB |6 bit Immediate |

ADI: NDU: NDC: NDZ: NCU: NCC: NCZ: LLI: LW: SW: LM: SM: BEQ: BLT BLE 

JAL: JLR: JRI 

|11\_00 |RA |9 bit Immediate offset |
| - | - | - |
|11\_01 |RA |RB |000\_000 |
|11\_11 |RA |9 bit Immediate offset |

RA: Register A RB: Register B RC: Register C 

**Instruction Description** 



|Mnemonic |Name & Format |Assembly |Action |
| - | - | - | - |
|ADA |ADD   (R) |*ada rc, ra, rb* |<p>Add  content  of  regB  to  regA  and  store result in regC. </p><p>*It modifies C and Z flags* </p>|
|ADC |Add if carry set (R) |*adc rc, ra, rb* |<p>Add  content  of  regB  to  regA  and  store result in regC, if carry flaf is set. </p><p>*It modifies C & Z flags* </p>|
|ADZ |Add if zero set (R) |*adz rc, ra, rb* |<p>Add  content  of  regB  to  regA  and  store result in regC, if zero flag is set. </p><p>*It modifies C & Z flags* </p>|
|AWC |Add with carry (R) |*awc rc,ra,rb* |<p>Add content of regA to regB and Carry and store result in regC </p><p>regC = regA + regB + Carry *It modifies C & Z flags* </p>|
|ACA |ADD   (R) |*aca rc, ra, rb* |<p>Add content of regA to complement of regA and store result in regC. </p><p>*It modifies C and Z flags* </p>|
|ACC |Add if carry set (R) |*acc rc, ra, rb* |<p>Add content of regA to Complement of regB and store result in regC, if carry flag is set. </p><p>*It modifies C & Z flags* </p>|
|ACZ |Add if zero set (R) |*acz rc, ra, rb* |<p>Add content of regA to Complement of regB and store result in regC, if zero flag is set. </p><p>*It modifies C & Z flags* </p>|
|ACW |Add with carry (R) |*acw rc,ra,rb* |<p>Add content of regA to Complement of regB and Carry and store result in regC </p><p>regC = regA + compement of regB + Carry *It modifies C & Z flags* </p>|



|ADI |Add immediate (I) |*adi rb, ra, imm6* |<p>Add  content  of  regA  with  Imm  (sign extended) and store result in regB. </p><p>*It modifies C and Z flags* </p>|
| - | :- | - | :- |
|NDU |Nand (R) |*ndu rc, ra, rb* |<p>NAND the content of regA to regB and store result in regC. </p><p>*It modifies Z flag* </p>|
|NDC |Nand if carry set (R) |*ndc rc, ra, rb* |<p>NAND the content of regA to regB and store result in regC if carry flag is set. </p><p>*It modifies Z flag* </p>|
|NDZ |Nand if zero set (R) |*ndz rc, ra, rb* |<p>NAND the content of regB to regA and store result in regC if zero flag is set. </p><p>*It modifies Z flag* </p>|
|NCU |Nand (R) |*ncu rc, ra, rb* |<p>NAND the content of regA to Complement of regB and store result in regC. </p><p>*It modifies Z flag* </p>|
|NCC |Nand if carry set (R) |*ncc rc, ra, rb* |<p>NAND the content of regA to complement of regB and store result in regC if carry flag is set. </p><p>*It modifies Z flag* </p>|
|NCZ |Nand if zero set (R) |*ncz rc, ra, rb* |<p>NAND the content of regA to complement of regB and store result in regC, if zero flag is set. </p><p>*It modifies Z flag* </p>|
|LLI |Load  lower immediate (J) |*lli ra, Imm* |Place 9 bits immediate into leat significant 9 bits of register A (RA) and higher 7 bits are assigned to zero. |
|LW |Load (I) |*lw ra, rb, Imm* |Load  value  from  memory  into  reg  A. Memory  address  is  formed  by  adding immediate  6  bits  (signed)  with  content  of red B. |



||||*It modifies zero flag.* |
| :- | :- | :- | - |
|SW |Store (I) |*sw ra, rb, Imm* |Store  value  from  reg  A  into  memory. Memory  address  is  formed  by  adding immediate  6  bits  (signed)  with  content  of red B. |
|LM |Load multiple (J) |*lw ra, Imm* |Load  multiple  registers  whose  address  is given  in  the  immediate  field  (one  bit  per register,  R0  to  R7  from  left  to  right)  in reverse order from right to left, i.e, registers from  R7  to  R0  if  corresponding  bit  is  set. Memory address is given in reg A. Registers which  are  expected  to  be  loaded  from consecutive memory addresses. |
|SM |Store multiple (J) |sm, ra, Imm |Store  multiple  registers  whose  address  is given  in  the  immediate  field  (one  bit  per register,  R0  to  R7  from  left  to  right)  in reverse order from right to left, i.e, registers from  R0  to  R7  if  corresponding  bit  is  set. Memory address is given in reg A. Registers which are expected to store must be stored to consecutive addresses. |
|BEQ |Branch on Equality (I) |beq ra, rb, Imm |If content of reg A and regB are the same, branch  to  PC+Imm\*2,  where  PC  is  the address of beq instruction |
|BLT |<p>Branch  on  Less Than </p><p>(I) </p>|blt ra, rb, Imm |If content of reg A is less than content of regB, then it branches to PC+Imm\*2, where PC is the address of beq instruction |
|BLE |<p>Branch on Less or Equal </p><p>(I) </p>|ble ra, rb, Imm |If content of reg A is less than or equal to the  content  of  regB,  then  it  branches  to PC+Imm\*2, where PC is the address of beq instruction |
|JAL |Jump and Link (J) |jalr ra, Imm |<p>Branch to the address PC+ Imm\*2. </p><p>Store  PC+2  into  regA,  where  PC  is  the address of the jalr instruction </p>|



|JLR |<p>Jump  and  Link  to Register </p><p>(I) </p>|jlr ra, rb |<p>Branch to the address in regB. </p><p>Store  PC+2  into  regA,  where  PC  is  the address of the jlr instruction </p>|
| - | :- | - | - |
|JRI |Jump to register (J) |jri ra, Imm |<p>Branch to memory location given by the RA </p><p>+ Imm </p>|


