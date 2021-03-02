version 1.0

task Tmap {
  input {
    Boolean? graph
  }
  command <<<
    tmap \
      ~{if (graph) then "-graph" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
  }
  output {
    File out_stdout = stdout()
  }
}