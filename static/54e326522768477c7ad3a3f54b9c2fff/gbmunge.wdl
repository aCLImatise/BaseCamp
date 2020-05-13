version 1.0

task Gbmunge {
  input {
    String iI
    String fF
    String oO
    Boolean tT
    Boolean sS
  }
  command <<<
    gbmunge \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS}
  >>>
}