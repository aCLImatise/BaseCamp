version 1.0

task Polydot {
  input {
    Boolean? word_size
    Boolean? graph
    Boolean? dump_feat
    Boolean? gap
  }
  command <<<
    _polydot \
      ~{if (word_size) then "-wordsize" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (dump_feat) then "-dumpfeat" else ""} \
      ~{if (gap) then "-gap" else ""}
  >>>
  parameter_meta {
    word_size: "integer    [6] Word size (Integer 2 or more)"
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    dump_feat: "toggle     [N] Dump all matches as feature files"
    gap: "integer    [10] This specifies the size of the gap that\\nis used to separate the individual dotplots\\nin the display. The size is measured in\\nresidues, as displayed in the output.\\n(Integer 0 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}