version 1.0

task FastxTrimmer {
  input {
    String fF
    String lL
    String tT
    Int mM
    Boolean zZ
    Boolean vV
    String iI
    String oO
  }
  command <<<
    fastx_trimmer \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}