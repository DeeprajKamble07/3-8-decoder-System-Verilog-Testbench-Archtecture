class scoreboard;
  mailbox mon2scb;
  bit [7:0] expected;
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  task main();
    forever
      begin
        transaction trans;
        mon2scb.get(trans);
        trans.display("SCB");
        
        if(trans.en)
          begin
        case(trans.a)
          3'b000: expected=8'b00000001;
        3'b001: expected=8'b00000010;
        3'b010: expected=8'b00000100;
        3'b011: expected=8'b00001000;
        3'b100: expected=8'b00010000;
        3'b101: expected=8'b00100000;
        3'b110: expected=8'b01000000;
        3'b111: expected=8'b10000000;
        default: expected=8'b00000000;
        endcase
            
        if(trans.y==expected)
          $display("PASS");
        else
          $display("FAIL: expected=%0b got=%0b",expected,trans.y);
          end
        else
          begin
          $display("[SCB] INFO: enable=0, check skipped");
      end
      end
  endtask
endclass
