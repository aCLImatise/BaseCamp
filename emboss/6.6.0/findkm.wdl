version 1.0

task Findkm {
  input {
    Boolean? graph_lb
    File file
  }
  command <<<
    findkm \
      ~{file} \
      ~{if (graph_lb) then "-graphlb" else ""}
  >>>
  parameter_meta {
    graph_lb: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    file: "[-outfile]           outfile    [*.findkm] Output file name"
  }
  output {
    File out_stdout = stdout()
  }
}