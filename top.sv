`include "interface.sv"
`include "test.sv"
module top;
  bit clk=0;
  always #5 clk=~clk;
  intf intff(clk);
  test tst(intff);
  decoder3to8 dut(.en(intff.en),.a(intff.a),.y(intff.y));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    #100 $finish;
  end
endmodule
