version 1.0

task Kaiju2krona {
  input {
    File iI
    File oO
    File tT
    File nN
    Boolean vV
    Boolean uU
  }
  command <<<
    kaiju2krona \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-u" false="" uU}
  >>>
}