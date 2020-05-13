version 1.0

task OverlapStats {
  input {
    String gG
    String oO
    String oO
  }
  command <<<
    overlapStats \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}