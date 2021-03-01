version 1.0

task Plotorf {
  input {
    Boolean? graph
    Boolean? start
    Boolean? stop
  }
  command <<<
    plotorf \
      ~{if (graph) then "-graph" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (stop) then "-stop" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    start: "string     [ATG] Start codons (Any string)"
    stop: "string     [TAA,TAG,TGA] Stop codons (Any string)"
  }
  output {
    File out_stdout = stdout()
  }
}