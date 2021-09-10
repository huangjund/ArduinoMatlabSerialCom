serialportlist("available")
arduinoObj = serialport("COM5",9600)
configureTerminator(arduinoObj,"CR/LF");
flush(arduinoObj);
arduinoObj.UserData = struct("Data",[],"Count",1)
configureCallback(arduinoObj,"terminator",@readSerialData);
