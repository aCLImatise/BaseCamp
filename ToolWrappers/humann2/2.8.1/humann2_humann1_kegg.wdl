version 1.0

task Humann2Humann1Kegg {
  input {
    Boolean? var_0
    Boolean? i_kegg_trans
    Boolean? o
    String? var_3
  }
  command <<<
    humann2_humann1_kegg \
      ~{var_3} \
      ~{if (var_0) then "--igenels" else ""} \
      ~{if (i_kegg_trans) then "--ikeggtrans" else ""} \
      ~{if (o) then "--o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: "[IGENELS]"
    i_kegg_trans: "[IKEGGTRANS]"
    o: "[O]"
    var_3: ""
  }
  output {
    File out_stdout = stdout()
  }
}