version 1.0

task ProphyleClassify {
  input {
    Int kK
    String mM
    String fF
    String lL
    Boolean pP
    Boolean aA
    Boolean lL
    Boolean xX
    Boolean mM
    Boolean cC
    Boolean kK
    Boolean cC
  }
  command <<<
    prophyle classify \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-A" false="" aA} \
      ~{true="-L" false="" lL} \
      ~{true="-X" false="" xX} \
      ~{true="-M" false="" mM} \
      ~{true="-C" false="" cC} \
      ~{true="-K" false="" kK} \
      ~{true="-c" false="" cC}
  >>>
}