version 1.0

task EdlibAligner {
  input {
    Boolean sS
    String mM
    String nN
    String kK
    Boolean pP
    Boolean lL
    String fF
    String? optionsOptions
    String? queriesQueriesFastA
    String? targetTargetFastA
  }
  command <<<
    edlib-aligner \
      ~{optionsOptions} \
      ~{true="-s" false="" sS} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{queriesQueriesFastA} \
      ~{targetTargetFastA}
  >>>
}