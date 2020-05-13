version 1.0

task ProphyleIndex {
  input {
    String gG
    Int jJ
    Int kK
    String lL
    Float sS
    Boolean fF
    Boolean mM
    Boolean pP
    Boolean kK
    Boolean tT
    Boolean aA
    Boolean cC
  }
  command <<<
    prophyle index \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-M" false="" mM} \
      ~{true="-P" false="" pP} \
      ~{true="-K" false="" kK} \
      ~{true="-T" false="" tT} \
      ~{true="-A" false="" aA} \
      ~{true="-c" false="" cC}
  >>>
}