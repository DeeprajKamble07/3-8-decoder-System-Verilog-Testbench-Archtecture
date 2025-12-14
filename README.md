# 3-8-decoder-System-Verilog-Testbench-Archtecture

This project demonstrates the functional verification of a 3:8 decoder using a SystemVerilog transaction-based testbench architecture. The decoder converts a 3-bit binary input into an 8-bit one-hot output, and its functionality is verified for all valid input combinations and enable conditions.

A structured verification environment is developed, consisting of a generator, driver, monitor, and scoreboard. The generator creates randomized and directed stimulus, the driver applies inputs to the DUT, the monitor captures DUT responses, and the scoreboard compares actual outputs against expected results.

The testbench incorporates self-checking logic and proper gating based on the enable signal to avoid false failures during invalid cycles. Simulation results and waveform analysis are used to validate correct decoding behavior and debug mismatches effectively.

 1.Key Highlights

a. Designed a SystemVerilog testbench to verify a 3:8 decoder

b. Implemented generator, driver, monitor, and scoreboard components

c. Verified one-hot decoding functionality for all input combinations

d. Applied enable-based gating to ensure valid functional checks

e. Used self-checking mechanisms for automated verification

2. Technologies Used

1. SystemVerilog

2. Functional Verification
   
3. Transaction-Based Testbench Architecture

4. RTL Simulation (EDA Playground)

Transaction-Based Testbench Architecture

RTL Simulation (EDA Playground)
