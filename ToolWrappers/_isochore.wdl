version 1.0

task Isochore {
  input {
    Boolean? graph
    Boolean? window
    Boolean? shift
  }
  command <<<
    _isochore \
      ~{if (graph) then "-graph" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (shift) then "-shift" else ""}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    window: "integer    [1000] Window size (Integer 1 or more)"
    shift: "integer    [100] Shift increment (Integer 1 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}