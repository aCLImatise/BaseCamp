version 1.0

task Humann2Humann1Kegg {
  input {
    Boolean iIGeneLs
    Boolean iIKeggTrans
    Boolean iIKoc
    Boolean ikeggorgid2orgIkeggorgid2orgName
    Boolean oO
  }
  command <<<
    humann2_humann1_kegg \
      ~{true="--igenels" false="" iIGeneLs} \
      ~{true="--ikeggtrans" false="" iIKeggTrans} \
      ~{true="--ikoc" false="" iIKoc} \
      ~{true="--ikeggOrgId2OrgName" false="" ikeggorgid2orgIkeggorgid2orgName} \
      ~{true="--o" false="" oO}
  >>>
}