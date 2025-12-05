# LED Frequency Selector - Verilog FPGA Project

A configurable LED blink module with switch-selectable output frequencies, developed as part of my FPGA learning progression.

## Overview

This project implements a parameterized clock divider in Verilog HDL that generates four selectable output frequencies (1Hz, 10Hz, 50Hz, 100Hz) controlled via 2-bit switch input. The design demonstrates fundamental FPGA concepts including clock division, multiplexer design, and testbench development.

## Features

- Parameterized clock divider constants for easy frequency adjustment
- 4 selectable output frequencies via switch input
- Enable control signal for output gating
- 50% duty cycle generation
- Comprehensive testbench included

## Frequency Selection

| SW[1] | SW[0] | Output Frequency |
|-------|-------|------------------|
| 0     | 0     | 100 Hz           |
| 0     | 1     | 50 Hz            |
| 1     | 0     | 10 Hz            |
| 1     | 1     | 1 Hz             |

## File Structure
```
├── src/
│   └── tutorial_led_blink.v    # Main synthesizable module
├── tb/
│   └── test1.v                 # Testbench
└── README.md
```

## Tools Used

- Intel Quartus Prime Lite (Synthesis)
- ModelSim (Simulation)

## How to Use

### Simulation
1. Open ModelSim or Quartus simulation tool
2. Compile both `tutorial_led_blink.v` and `test1.v`
3. Run simulation and observe waveforms

### Synthesis
1. Create new Quartus project
2. Add `src/tutorial_led_blink.v` to project
3. Set target device and pin assignments
4. Compile and program FPGA

## Key Concepts Demonstrated

- **Clock Division**: Using counters to generate lower frequencies from system clock
- **Parameterization**: Configurable constants for different input clock frequencies
- **Concurrent Processes**: Multiple always blocks running in parallel
- **Multiplexer Design**: Case statement for frequency selection
- **Output Gating**: Enable signal controlling LED output

## Author

**Abdulrahman Ahmed Hussein**  
Electrical Engineering Student | American University of the Middle East
