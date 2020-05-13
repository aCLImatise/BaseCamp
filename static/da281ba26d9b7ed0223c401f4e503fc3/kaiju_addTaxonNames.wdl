version 1.0

task KaijuAddTaxonNames {
  input {
    File iI
    File oO
    File tT
    File nN
    Boolean uU
    Boolean pP
    Boolean rR
    Boolean vV
  }
  command <<<
    kaiju-addTaxonNames \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-p" false="" pP} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV}
  >>>
}