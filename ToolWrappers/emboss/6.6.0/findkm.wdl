version 1.0

task Findkm {
  input {
    Boolean? graph_lb
    File output_file_name
  }
  command <<<
    findkm \
      ~{output_file_name} \
      ~{if (graph_lb) then "-graphlb" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph_lb: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    output_file_name: "[-outfile]           outfile    [*.findkm] Output file name"
  }
  output {
    File out_stdout = stdout()
  }
}