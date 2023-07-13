//Verilog module for UpDown counter
//When Up mode is selected, counter counts from 0 to 15 and then again from 0 to 15.
//When Down mode is selected, counter counts from 15 to 0 and then again from 15 to 0.
//Changing mode doesn't reset the Count value to zero.
//You have apply high value to reset, to reset the Counter output.
module updowncounter(
    Clk,
    reset,
    UpDown,  //high for UP counter and low for Down counter
    Count  // 4 bit bus
    );

    
    //input ports and their sizes
    input Clk,reset,UpDown;
    //output ports and their size
    output [3 : 0] Count;
    //Internal variables
    reg [3 : 0] Count = 0;  
    
     always @(posedge(Clk) or posedge(reset))
     begin
        if(reset == 1) 
            Count <= 0;
        else    
            if(UpDown == 1)   //Up mode selected
                if(Count == 15)
                    Count <= 0;
                else
                    Count <= Count + 1; //Incremend Counter
            else  //Down mode selected
                if(Count == 0)
                    Count <= 15;
                else
                    Count <= Count - 1; //Decrement counter
     end    
    
endmodule
