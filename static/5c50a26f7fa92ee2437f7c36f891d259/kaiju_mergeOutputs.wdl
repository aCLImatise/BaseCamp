version 1.0

task KaijuMergeOutputs {
  input {
    File iI
    File jJ
    File oO
    String cC
    File tT
    Boolean sS
    Boolean vV
    Boolean dD
  }
  command <<<
    kaiju-mergeOutputs \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}