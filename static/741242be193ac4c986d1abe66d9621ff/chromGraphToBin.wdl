version 1.0

task ChromGraphToBin {
  input {
    String in_dot_tab
    String out_dot_chrom_graph
  }
  command <<<
    chromGraphToBin \
      ~{in_dot_tab} \
      ~{out_dot_chrom_graph}
  >>>
  parameter_meta {
    in_dot_tab: ""
    out_dot_chrom_graph: ""
  }
}