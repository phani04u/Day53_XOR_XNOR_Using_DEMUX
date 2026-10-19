`timescale 1ns / 1ps
module DEMUX_XOR(
input wire S1,S0,
input I,
output xor_gate,
output reg [3:0] Y
);
integer i;
always @(*) begin
Y = 4'b0000;
xor_gate = 1'b0;
for(i=0;i<4;i=i+1) begin  
     if({S1,S0} == i) begin
         Y[i] = I;
       end
     if(i == 1 || i == 2 ) begin
          xor_gate = xor_gate | Y[i];
      end
end
end
endmodule
