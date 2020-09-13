version 1.0

task Humann2Humann1Kegg {
  input {
    Boolean? var_0
    Boolean? i_kegg_trans
    Boolean? i_koc
    Boolean? i_kegg_orgid_two_orgname
    Boolean? o
    String? var_5
  }
  command <<<
    humann2_humann1_kegg \
      ~{var_5} \
      ~{if (var_0) then "--igenels" else ""} \
      ~{if (i_kegg_trans) then "--ikeggtrans" else ""} \
      ~{if (i_koc) then "--ikoc" else ""} \
      ~{if (i_kegg_orgid_two_orgname) then "--ikeggOrgId2OrgName" else ""} \
      ~{if (o) then "--o" else ""}
  >>>
  parameter_meta {
    var_0: "[IGENELS]"
    i_kegg_trans: "[IKEGGTRANS]"
    i_koc: "[IKOC]"
    i_kegg_orgid_two_orgname: "[IKEGGORGID2ORGNAME]"
    o: "[O]"
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}