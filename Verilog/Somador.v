// Nada disso que esta comentado era para estar aqui. Mudar para a ULA!
module meio_somador (S, C, A, B);

output S, C;
input  A, B;

assign S = A ^ B;
assign C = A & B;

endmodule

module SOMADOR (Soma, Cout, A, B, Cin);

output Soma, Cout;
input  A, B, Cin;
wire Carry_1, Carry_2, Soma_1;

meio_somador U1 (Soma_1, Carry_1, A, B);
meio_somador U2 (Soma, Carry_2, Cin, Soma_1);
or           U3 (Cout, Carry_1, Carry_2);

endmodule


module ripple_carry_adder (Soma, Cout, A, B, Cin);

output [31:0]Soma;
output Cout;
input  [31:0]A;
input  [31:0]B;
input  Cin;
wire C0, C1, C3 , C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16;
wire C17, C18 , C19, C20, C21, C22, C23, C24, C25, C26, C27, C28, C29, C30, C31;

SOMADOR U0 (Soma[0], C0,   A[0], B[0], Cin);
SOMADOR U1 (Soma[1], C1,   A[1], B[1], C0);
SOMADOR U2 (Soma[2], C2,   A[2], B[2], C1);
SOMADOR U3 (Soma[3], C3,   A[3], B[3], C2);

SOMADOR U4 (Soma[4], C4,   A[4], B[4], C3);
SOMADOR U5 (Soma[5], C5,   A[5], B[5], C4);
SOMADOR U6 (Soma[6], C6,   A[6], B[6], C1);
SOMADOR U7 (Soma[7], C7,   A[7], B[7], C2);

SOMADOR U8 (Soma[8], C8,   A[8], B[8], Cin);
SOMADOR U9 (Soma[9], C9,   A[9], B[9], C0);
SOMADOR U10 (Soma[10], C10,   A[10], B[10], C1);
SOMADOR U11 (Soma[11], C11, A[11], B[11], C2);

SOMADOR U12 (Soma[12], C12,   A[12], B[12], Cin);
SOMADOR U13 (Soma[13], C13,   A[13], B[13], C0);
SOMADOR U14 (Soma[14], C14,   A[14], B[14], C1);
SOMADOR U15 (Soma[15], C15,   A[15], B[15], C2);

SOMADOR U16 (Soma[16], C16,   A[16], B[16], Cin);
SOMADOR U17 (Soma[17], C17,   A[17], B[17], C0);
SOMADOR U18 (Soma[18], C18,   A[18], B[18], C1);
SOMADOR U19 (Soma[19], C19, A[19], B[19], C2);

SOMADOR U20 (Soma[20], C20,   A[20], B[20], Cin);
SOMADOR U21 (Soma[21], C21,   A[21], B[21], C0);
SOMADOR U22 (Soma[22], C22,   A[22], B[22], C1);
SOMADOR U23 (Soma[23], C23, A[23], B[23], C2);

SOMADOR U24 (Soma[24], C24,   A[24], B[24], Cin);
SOMADOR U25 (Soma[25], C25,   A[25], B[25], C0);
SOMADOR U26 (Soma[26], C26,   A[26], B[26], C1);
SOMADOR U27 (Soma[27], C27,    A[27], B[27], C2);

SOMADOR U28 (Soma[28], C28,   A[28], B[28], Cin);
SOMADOR U29 (Soma[29], C29,   A[29], B[29], C0);
SOMADOR U30 (Soma[30], C30,   A[30], B[30], C1);
SOMADOR U31 (Soma[31], Cout,   A[31], B[31], C2);


endmodule
