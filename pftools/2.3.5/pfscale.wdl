version 1.0

task Pfscale {
  input {
    Boolean lL
    Boolean lL
    Boolean mM
    Boolean nN
    Boolean pP
    Boolean qQ
  }
  command <<<
    pfscale \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-P" false="" pP} \
      ~{true="-Q" false="" qQ}
  >>>
}