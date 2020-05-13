version 1.0

task Str8rzr {
  input {
    Boolean nN
    Boolean vV
    Boolean iI
    Int aA
    Int mM
    String cC
    Int pP
    String tT
    File oO
    Int fF
  }
  command <<<
    str8rzr \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{true="-i" false="" iI} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}