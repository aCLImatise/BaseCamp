version 1.0

task CompareReads {
  input {
    File iI
    File sS
    Boolean lL
    Boolean oO
    String kK
    String tT
    Boolean vV
  }
  command <<<
    compare_reads \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}