% MIT License

% Copyright (c) 2020 Jean-Jacques François Reibel

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

-module(main).
-record(car, {wheels, doors, cylinders}). 
-export([start/0]).

add(X,Y) -> 
   X+Y.

subtract(X,Y) -> 
   X-Y.

start() ->
    io:fwrite("Creating car.\n"),
    Subaru = #car{wheels = 4, doors = 4, cylinders = 4},
    io:fwrite("Wheel check: "),
    io:fwrite("~w", [Subaru#car.wheels]),
    io:fwrite("\n"),
    io:fwrite("Door check: "),
    io:fwrite("~w", [Subaru#car.doors]),
    io:fwrite("\n"),
    io:fwrite("Cylinder check: "),
    io:fwrite("~w", [Subaru#car.cylinders]),
    io:fwrite("\n \n"),
    io:fwrite("Creating a new car object with an added wheel.\n"),
    Subaru2 = #car{wheels = 5, doors = 4, cylinders = 4},
    io:fwrite("Wheel check: "),
    io:fwrite("~w", [Subaru2#car.wheels]),
    io:fwrite("\n"),
    io:fwrite("Door check: "),
    io:fwrite("~w", [Subaru2#car.doors]),
    io:fwrite("\n"),
    io:fwrite("Cylinder check: "),
    io:fwrite("~w", [Subaru2#car.cylinders]),
    io:fwrite("\n \n"),
    io:fwrite("Creating a new car object with an added wheel.\n"),
    Subaru3 = #car{wheels = subtract(Subaru2#car.wheels, 1), doors = 4, cylinders = 4},
    io:fwrite("Wheel check: "),
    io:fwrite("~w", [Subaru3#car.wheels]),
    io:fwrite("\n"),
    io:fwrite("Door check: "),
    io:fwrite("~w", [Subaru3#car.doors]),
    io:fwrite("\n"),
    io:fwrite("Cylinder check: "),
    io:fwrite("~w", [Subaru3#car.cylinders]),
    io:fwrite("\n").