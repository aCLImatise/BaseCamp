version 1.0

task Wobble {
  input {
    Boolean? graph
    Boolean? window
    Boolean? bases
  }
  command <<<
    wobble \
      ~{if (graph) then "-graph" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (bases) then "-bases" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    window: "integer    [30] Window size in codons (Integer 1 or\\nmore)"
    bases: "string     [GC] Bases used (Any string)"
  }
  output {
    File out_stdout = stdout()
  }
}