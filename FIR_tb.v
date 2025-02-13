module FIR_tb;
  reg clk;
  reg signed [7:0]x;
  wire signed [17:0]y;
  FIR f1(clk,x,y);
  initial begin
  $monitor("time is %0t,input = %h the output is y= %h",$time,x,y);
  end
  always #5 clk=~clk;
  initial begin
    clk=0;x=8'h00;
    #10 x=8'h12;
    #10 x=8'hAC;
    #10 x=8'hDE;
    #10 $stop;
  end
endmodule
