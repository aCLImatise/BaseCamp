version 1.0

task ChromGraphFromBin {
  input {
    String? chrom
    String in_dot_chrom_graph
    String out_dot_tab
  }
  command <<<
    chromGraphFromBin \
      ~{in_dot_chrom_graph} \
      ~{out_dot_tab} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""}
  >>>
  parameter_meta {
    chrom: "- restrict output to single chromosome"
    in_dot_chrom_graph: ""
    out_dot_tab: ""
  }
}