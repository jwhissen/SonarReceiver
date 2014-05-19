architecture sonar is

	component sonar_ctrl is
		port(
			GND	: out std_logic;
			V5	: out std_logic;
			TX	: out std_logic;
			RX	: out std_logic;
			AN	: out std_logic;
			PW	: out std_logic;
			BW	: out std_logic
		);
		
	signal sClk : std_logic;
	signal stx : std_logic;
	signal srx : std_logic;
	
	
-- Use PWM?


--GND – Return for the DC power supply. GND (& Vcc) must be	ripple and noise free for best operation.	
--+5V – Vcc – Operates on 2.5V - 5.5V. Recommended current	capability of 3mA for 5V, and 2mA for 3V.	
--TX – , When the *BW is open or held low, the TX output delivers	asynchronous serial with an RS232 format, except voltages are 0-	Vcc. The output is an ASCII capital “R”, followed by three ASCII	character digits representing the range in inches up to a maximum of	255, followed by a carriage return (ASCII 13). The baud rate is	9600, 8 bits, no parity, with one stop bit. Although the voltage of 0-	Vcc is outside the RS232 standard, most RS232 devices have	sufficient margin to read 0-Vcc serial data. If standard voltage level	RS232 is desired, invert, and connect an RS232 converter such as a	MAX232.	 *Brown dot parts: When BW pin is held high the TX output	sends a single pulse, suitable for low noise chaining (no serial data).	
--RX – This pin is internally pulled high. The EZ1™	 will continually	measure range and output if the RX pin is left unconnected or held	high. If held low the EZ1™	 will stop ranging. Bring high 20uS or	more for range reading.	
--AN – Outputs analog voltage with a scaling factor of (Vcc/512) per	inch. A supply of 5V yields ~9.8mV/in. and 3.3V yields ~6.4mV/in.	The output is buffered and corresponds to the most recent range data.	
--PW – This pin outputs a pulse width representation of range. To	calculate distance use the scale factor of 147uS per inch.	BW – *Leave open or hold low for serial output on the TX output.	 *Brown dot parts: When BW pin is held high the TX output


end architecture sonar;