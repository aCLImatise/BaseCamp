version 1.0

task ArbA2ps {
  input {
    Boolean dD
    Boolean fnumFnum
    Boolean hHStr
    Boolean lL
    Boolean lnumLnum
    Boolean mM
    Boolean nN
    Boolean pP
    Boolean qQ
    Boolean sS
  }
  command <<<
    arb_a2ps \
      ~{true="-d" false="" dD} \
      ~{true="-Fnum" false="" fnumFnum} \
      ~{true="-Hstr" false="" hHStr} \
      ~{true="-l" false="" lL} \
      ~{true="-lnum" false="" lnumLnum} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS}
  >>>
}