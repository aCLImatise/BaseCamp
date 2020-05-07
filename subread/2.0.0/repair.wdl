version 1.0

task Repair {
  input {
    String iI
    String oO
    Boolean sS
    Boolean cC
    Int tT
    Boolean dD
    Boolean tT
  }
  command <<<
    repair \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT}
  >>>
}