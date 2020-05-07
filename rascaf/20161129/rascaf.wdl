version 1.0

task Rascaf {
  input {
    String bB
    String fF
    String oO
    String bcBc
    Int msMs
    Int mlMl
    Int breakBreakN
    Int kK
    Boolean csCs
    Boolean vV
  }
  command <<<
    rascaf \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(bcBc) then ("-bc " +  '"' + bcBc + '"') else ""} \
      ~{if defined(msMs) then ("-ms " +  '"' + msMs + '"') else ""} \
      ~{if defined(mlMl) then ("-ml " +  '"' + mlMl + '"') else ""} \
      ~{if defined(breakBreakN) then ("-breakN " +  '"' + breakBreakN + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-cs" false="" csCs} \
      ~{true="-v" false="" vV}
  >>>
}