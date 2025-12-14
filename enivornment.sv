`include "agent.sv"
`include "scoreboard.sv"
class enivornment;
  mailbox mon2scb;
  agent age;
  scoreboard scb;
  virtual intf vif;
  function new(virtual intf vif);
    mon2scb=new();
    age=new(vif,mon2scb);
    scb=new(mon2scb);
  endfunction
  task run();
    fork
      age.main();
      scb.main();
    join
  endtask
endclass
