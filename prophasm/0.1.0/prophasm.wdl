version 1.0

task Prophasm {
  input {
    Int computeCompute
    Int computeCompute
    String reReAssemble
    Int kK
    File iI
    File oO
    File xX
    File sS
    Boolean sS
  }
  command <<<
    prophasm \
      ~{if defined(computeCompute) then ("- compute " +  '"' + computeCompute + '"') else ""} \
      ~{if defined(computeCompute) then ("- compute " +  '"' + computeCompute + '"') else ""} \
      ~{if defined(reReAssemble) then ("- re-assemble " +  '"' + reReAssemble + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-S" false="" sS}
  >>>
}