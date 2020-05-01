version 1.0

task SubreadBuildindex {
  input {
    String oO
    Boolean fF
    Boolean bB
    Int mM
    Int fF
    Boolean cC
    Boolean vV
  }
  command <<<
    subread-buildindex \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-B" false="" bB} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV}
  >>>
}