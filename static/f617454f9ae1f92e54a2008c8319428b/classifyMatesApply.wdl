version 1.0

task ClassifyMatesApply {
  input {
    String gG
    String rR
    Boolean pP
    String oO
  }
  command <<<
    classifyMatesApply \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}