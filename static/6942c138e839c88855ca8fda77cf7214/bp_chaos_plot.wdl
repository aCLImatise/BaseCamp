version 1.0

task BpChaosPlot.pl {
  input {
    String? i_slash_input
    String? f_slash_format
    String chaos_plot
  }
  command <<<
    bp_chaos_plot.pl \
      ~{chaos_plot} \
      ~{if defined(i_slash_input) then ("-i/--input " +  '"' + i_slash_input + '"') else ""} \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""}
  >>>
  parameter_meta {
    i_slash_input: ""
    f_slash_format: ""
    chaos_plot: ""
  }
}