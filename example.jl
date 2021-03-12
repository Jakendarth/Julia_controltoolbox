using Plots
using LaTeXStrings
using ControlSystems
print("Hi")
x=1:100
y=x.^2
plot(x,y,color=:red)
title!(L"y=x^2")
xaxis!("x")
yaxis!("y")
sys = tf(1, [.01,1,1])
print(sys)
stepplot(sys, 5) # Compilation time might be long for first simulation
nyquistplot(sys)
pzmap(sys)
