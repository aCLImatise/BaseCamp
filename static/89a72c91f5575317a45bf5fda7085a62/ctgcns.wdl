version 1.0

task Ctgcns {
  input {
    String cC
    String cC
    File tT
    Boolean fF
    Boolean uU
    File oO
    File iI
    Boolean vV
    Boolean vV
    String wW
  }
  command <<<
    ctgcns \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-U" false="" uU} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}