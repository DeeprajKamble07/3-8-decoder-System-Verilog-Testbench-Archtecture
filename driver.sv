class driver;
  virtual intf.drv vif;
  mailbox gen2drv;
  transaction trans;
  function new(virtual intf.drv vif, mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  task main();
    forever
      begin
        @(vif.drvcb);
        gen2drv.get(trans);
        vif.drvcb.en<=trans.en;
        vif.drvcb.a<=trans.a;
        trans.display("DRV");
        #2;
      end
  endtask
endclass
