version 1.0

task BoldIdentification {
  input {
    String iI
    String fF
    String oO
    String dD
    Int nN
    Int rR
    Boolean cC
    Boolean dD
  }
  command <<<
    bold_identification \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-D" false="" dD}
  >>>
}