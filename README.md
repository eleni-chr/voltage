# voltage
Compute the voltages at three junctions of a basic electrical circuit with 8 resistors.

Function written by Eleni Christoforidou in MATLAB R2022b.

This function computes the voltages at junctions A, B and C of a basic electrical circuit with 8 resistors (see figure below). The function has two inputs, V for the voltage of the supply in volts and R, a vector of the values of the resistors in ohm. R1 in the figure is R(1), that is, the first element of the vector R. The output of the function is a three-element column vector with the voltage levels at junctions A, B and C, respectively. To compute the voltage levels, the function uses Kirchhoff's current law that states that the sum of current flowing in and out of a junction must be zero. The current across a resistor is the voltage difference divided by the resistance.

![circuit diagram](https://github.com/eleni-chr/voltage/blob/main/circuit.png)
