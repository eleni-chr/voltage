function out = voltage(V, R)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function computes the voltages at junctions A, B and C of a basic
% electrical circuit with 8 resistors (see attached figure). The function 
% has two inputs, V for the voltage of the supply in volts and R, a vector 
% of the values of the resistors in ohm. R1 in the figure is R(1), that is,
% the first element of the vector R. The output of the function is a 
% three-element column vector with the voltage levels at junctions A, B and
% C, respectively. To compute the voltage levels, the function uses 
% Kirchhoff's current law that states that the sum of current flowing in 
% and out of a junction must be zero. The current across a resistor is the 
% voltage difference divided by the resistance.

%Calculate Kirchhoff's coefficients
I1=R(2)*R(7) + R(1)*R(2) + R(1)*R(7);
I2=-R(1)*R(2);
I3=0;
I4=-R(3)*R(4)*R(8);
I5=R(4)*R(7)*R(8) + R(3)*R(4)*R(8) + R(3)*R(4)*R(7) + R(3)*R(7)*R(8);
I6=-R(3)*R(4)*R(7);
I7=0;
I8=-R(5)*R(6);
I9=R(6)*R(8) + R(5)*R(6) + R(5)*R(8);

A=[I1, I2, I3;
    I4, I5, I6;
    I7, I8, I9];
b=V*[R(2)*R(7); R(4)*R(7)*R(8); R(6)*R(8)];
out=A\b;
end