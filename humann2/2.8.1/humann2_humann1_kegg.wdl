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
      ~{true="--igenels" false="" var_0} \
      ~{true="--ikeggtrans" false="" i_kegg_trans} \
      ~{true="--ikoc" false="" i_koc} \
      ~{true="--ikeggOrgId2OrgName" false="" i_kegg_orgid_two_orgname} \
      ~{true="--o" false="" o}
  >>>
  parameter_meta {
    var_0: "[IGENELS]"
    i_kegg_trans: "[IKEGGTRANS]"
    i_koc: "[IKOC]"
    i_kegg_orgid_two_orgname: "[IKEGGORGID2ORGNAME]"
    o: "[O]"
    var_5: ""
  }
}