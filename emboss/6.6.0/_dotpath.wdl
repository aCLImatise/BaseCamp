version 1.0

task Dotpath {
  input {
    Boolean? word_size
    Boolean? graph
    Boolean? overlaps
  }
  command <<<
    _dotpath \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (overlaps) then "-overlaps" else ""}
  >>>
  parameter_meta {
    word_size: "integer    [4] Word size (Integer 2 or more)"
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    overlaps: "boolean    [N] Displays the overlapping matches (in\\nred) as well as the minimal set of\\nnon-overlapping matches"
  }
  output {
    File out_stdout = stdout()
  }
}