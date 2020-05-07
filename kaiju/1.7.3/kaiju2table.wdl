version 1.0

task Kaiju2table {
  input {
    File oO
    File tT
    File nN
    String rR
    Float mM
    Int cC
    Boolean eE
    Boolean uU
    Boolean pP
    Boolean lL
    Boolean vV
  }
  command <<<
    kaiju2table \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-u" false="" uU} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{true="-v" false="" vV}
  >>>
}