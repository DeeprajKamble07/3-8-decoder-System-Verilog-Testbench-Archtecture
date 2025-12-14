class transaction;
  rand bit en;
  rand bit [2:0] a;
  bit [7:0]y;
  function void display(string name);
    $display("[%0s] en=%0b a=%0b y=%0b",name,en,a,y);
  endfunction
endclass
