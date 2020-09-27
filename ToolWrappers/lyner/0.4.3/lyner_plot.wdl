version 1.0

task LynerPlot {
  input {
    File? outfile
  }
  command <<<
    lyner plot \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    outfile: "-d, --directory DIRECTORY\\n--with-annotation\\n--annotation-split FLOAT RANGE\\n--colorscale [Greys|YlGnBu|Greens|YlOrRed|Bluered|RdBu|Reds|Blues|Picnic|Rainbow|Portland|Jet|Hot|Blackbody|Earth|Electric|Viridis|Cividis]\\n-m, --mode LIST\\n-c, --mode-config DICT\\n-a, --auto-open\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}