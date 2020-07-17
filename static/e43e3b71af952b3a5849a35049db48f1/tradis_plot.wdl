version 1.0

task TradisPlot {
  input {
    File? f
  }
  command <<<
    tradis_plot \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
  }
}