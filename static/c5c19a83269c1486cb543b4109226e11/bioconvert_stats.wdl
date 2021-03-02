version 1.0

task BioconvertStats {
  input {
    String? verbosity
    Boolean? no_plot
    String formatted_dot
  }
  command <<<
    bioconvert_stats \
      ~{formatted_dot} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (no_plot) then "--no-plot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Set the outpout verbosity."
    no_plot: ""
    formatted_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}