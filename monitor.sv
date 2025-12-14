class monitor;
  virtual intf.mon vif;
  mailbox mon2scb;
  function new(virtual intf.mon vif, mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  task main();
    transaction trans;
    forever
      begin
        #2;
        @(vif.moncb);
        trans=new();
        trans.en=vif.moncb.en;
        trans.a=vif.moncb.a;
        trans.y=vif.moncb.y;
        trans.display("MON");
        mon2scb.put(trans);
      end
  endtask
endclass
