# Digital Logic Course - Lab Projects
This repository contains the lab projects for the second-year Digital Logic course, focusing on FPGA design using the Quartus software suite and Cyclone V FPGA development boards. The labs explore various digital logic concepts, including multiplexers, finite state machines, and debouncing circuits.

## Lab Overview
### Lab 1: Switch Debouncer Design
#### Objective:
This lab introduces the design of a switch debouncer, which is used to filter out signal noise caused by the mechanical bouncing of switches. The debouncer circuit ensures that a single clean signal is registered by the FPGA when a button is pressed.

#### Key Concepts:

- Learning the basics of Quartus software for FPGA design.
- Implementing digital components such as XOR gates, D Flip-Flops, and counters.
- Compiling the design and simulating it using the Quartus waveform editor.

#### Implementation:
A block diagram is created in Quartus, which includes a D Flip-Flop and a counter to debounce the switch input. The design is simulated to observe how the debouncer filters the bouncing noise, ensuring that only stable button presses are recognized by the circuit. The project is then compiled and loaded onto the DE0 FPGA board for physical testing.

### Lab 2: Basic Logic Circuit Design with Quartus
#### Objective:
This lab builds upon the switch debouncer by integrating it into basic combinational logic circuits. The design consists of simple logic gates (AND, OR, XOR) that take inputs from switches and buttons and output their results to LEDs.

#### Key Concepts:
- Expanding on the use of Quartus to design combinational logic circuits.
- Demonstrating the behaviour of basic logic gates using debounced inputs.

#### Implementation:
The debouncer output is combined with switch inputs to drive three different logic gates: AND, OR, and XOR. The results are displayed on LEDs connected to the FPGA. The logic circuit design is tested via simulation and then compiled and programmed onto the FPGA.


### Lab 3: Multiplexers and 8-Segment Display Operation
#### Objective:
This lab explores the use of multiplexers (MUX) and their interaction with an 8-segment display. An auto-generated MUX is created using Quartus' MegaWizard tool, and a custom logic-based MUX is manually implemented using Karnaugh map minimization techniques.

#### Key Concepts:

- Creating multiplexers via both automatic generation and manual logic design.
- Minimizing logic circuits with Karnaugh maps.
- Displaying binary data on an 8-segment display.

#### Implementation:
An 8-to-1 multiplexer is designed using the MegaWizard plug-in, with inputs based on the student’s ID number. A custom logic circuit that replicates the MUX’s behaviour is then designed, minimized, and implemented. Both MUX designs are compared, and their outputs are displayed on an 8-segment display using VHDL code to drive the display segments.


### Lab 4: Traffic Light Controller Design
#### Objective:
This lab introduces finite state machine (FSM) design to implement a traffic light controller. The FSM controls the lights at a T-intersection, switching between green, yellow, and red states based on button input.

#### Key Concepts:

- Designing and implementing an FSM.
- Understanding state transitions and how external inputs (button presses) influence the states.
- Using LEDs to simulate the behaviour of a real-world traffic light system.

#### Implementation:
An FSM is designed to manage the traffic lights at a T-intersection. The lights cycle through green, yellow, and red states based on button presses, simulating the behaviour of traffic signals. The debouncer circuit from Lab 1 is integrated to ensure clean button inputs. The current state of the traffic light system is displayed on LEDs, with each state representing a different light condition. The design is compiled and tested on the FPGA.

## Requirements and Preparation beforehand 
- Quartus Software Suite (version 13.0sp1 or 18.1 recommended)
- Cyclone V FPGA Development Board (DE0)
- Basic knowledge of VHDL and digital logic design.


