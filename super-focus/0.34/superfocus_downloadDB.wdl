version 1.0

task SuperfocusDownloadDB {
  input {
    String aA
    String cC
    String iI
    Boolean vV
  }
  command <<<
    superfocus_downloadDB \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}