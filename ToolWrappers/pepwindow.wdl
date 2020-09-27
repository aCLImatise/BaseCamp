version 1.0

task Pepwindow {
  input {
    Boolean? graph
    Boolean? data_file
    Boolean? window
    Boolean? normalize
  }
  command <<<
    pepwindow \
      ~{if (graph) then "-graph" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (normalize) then "-normalize" else ""}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    data_file: "datafile   [Enakai.dat] AAINDEX entry data file"
    window: "integer    [19] Window size (Integer 1 or more)"
    normalize: "boolean    [N] Normalize data values"
  }
  output {
    File out_stdout = stdout()
  }
}