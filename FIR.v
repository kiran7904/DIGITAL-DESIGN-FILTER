module FIR(
  input clk,
  input [7:0]x,
  output reg [17:0]y
);
  reg [7:0]delay1,delay2,delay3;
  parameter [7:0] d0=8'hA1,d1=8'hDA,d2=8'hE1,d3=8'h13;
  always@(posedge clk)
    begin
      delay1<=x;
      delay2<=delay1;
      delay3<=delay2;
      y=x*d0+delay1*d1+d2*delay2+d3*delay3;
    end
endmodule
