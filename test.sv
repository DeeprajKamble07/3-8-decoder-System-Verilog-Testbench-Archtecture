`include "enivornment.sv"
program test(intf intff);
  enivornment env;
  initial begin
    env=new(intff);
    env.age.gen.N=5;
    env.run();
  end
endprogram
