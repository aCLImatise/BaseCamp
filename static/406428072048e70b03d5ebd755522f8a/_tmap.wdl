version 1.0

task Tmap {
  input {
    Boolean? graph
    String? r_format
  }
  command <<<
    _tmap \
      ~{if (graph) then "-graph" else ""} \
      ~{if defined(r_format) then ("-rformat " +  '"' + r_format + '"') else ""}
  >>>
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    r_format: ")"
  }
  output {
    File out_stdout = stdout()
  }
}