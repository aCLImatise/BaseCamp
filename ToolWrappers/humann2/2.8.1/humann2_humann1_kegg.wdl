version 1.0

task Humann2Humann1Kegg {
  input {
    Boolean? var_0
    Boolean? i_kegg_trans
    Boolean? i_koc
    Boolean? o
    String? var_4
  }
  command <<<
    humann2_humann1_kegg \
      ~{var_4} \
      ~{if (var_0) then "--igenels" else ""} \
      ~{if (i_kegg_trans) then "--ikeggtrans" else ""} \
      ~{if (i_koc) then "--ikoc" else ""} \
      ~{if (o) then "--o" else ""}
  >>>
  parameter_meta {
    var_0: "[IGENELS]"
    i_kegg_trans: "[IKEGGTRANS]"
    i_koc: "[IKOC]"
    o: "[O]"
    var_4: ""
  }
  output {
    File out_stdout = stdout()
  }
}