# 8-bit Arithmetic Logic Unit (ALU) in Verilog

A synthesizable 8-bit Arithmetic Logic Unit (ALU) designed and verified using Verilog on EDA Playground. It supports a comprehensive set of arithmetic and logic operations with real-time status flag generation.

## 🚀 Features
* **Inputs & Data Width**: Takes two 8-bit operands (`A` and `B`) and a 4-bit operation selector (`op`)[cite: 17].
* **Outputs**: Generates an 8-bit result (`alu_out`) along with individual status flags (`carry`, `zero`, `overflow`) and an internal `temp` vector[cite: 17].
* **Operations Covered**: Includes arithmetic operations (like addition) and multiple bitwise/logical control functions handled via a robust `case` statement structure[cite: 17].
* **Self-Checking Testbench**: Includes test vectors exercising diverse input conditions and edge cases with time-sequenced delays.

## 📂 Project Structure
```text
├── design.sv          # Main 8-bit ALU RTL module (`alu`)
├── testbench.sv       # Testbench module (`alu_logic_tb`) for stimulus and verification
└── README.md          # Project documentation.

🛠️ Simulation & Verification
You can run and simulate this project directly via EDA Playground:

Compile design.sv and testbench.sv.

Run the simulation to observe the waveform results and internal flag transitions for different opcode selections.
