version 1.0

task TradisPlot {
  input {
    File fF
  }
  command <<<
    tradis_plot \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}