version 1.0

task Igvtools {
  input {
    String sort
    String index
    String to_tdf
    String count
    String format_exp
    String gui
  }
  command <<<
    igvtools \
      ~{sort} \
      ~{index} \
      ~{to_tdf} \
      ~{count} \
      ~{format_exp} \
      ~{gui}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort: "sort an alignment file by start position. "
    index: "index an alignment file"
    to_tdf: "convert an input file (cn, gct, wig) to tiled data format (tdf)"
    count: "compute coverage density for an alignment file"
    format_exp: "center, scale, and log2 normalize an expression file"
    gui: "Start the gui"
  }
  output {
    File out_stdout = stdout()
  }
}