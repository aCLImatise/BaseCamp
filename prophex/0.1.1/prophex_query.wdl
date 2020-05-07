version 1.0

task ProphexQuery {
  input {
    Int kK
    Boolean uU
    Boolean vV
    Boolean pP
    Boolean bB
    String lL
    Int tT
    String? idxIdxBase
    String? inInFq
  }
  command <<<
    prophex query \
      ~{idxIdxBase} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{inInFq}
  >>>
}