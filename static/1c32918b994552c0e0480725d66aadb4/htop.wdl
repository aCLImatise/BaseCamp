version 1.0

task Htop {
  input {
    Boolean fF
    Boolean iI
    Boolean lL
    Boolean oO
    Boolean sS
    Boolean bB
    Boolean cC
    Boolean fF
    Boolean hH
    Boolean lL
    Boolean mM
    Boolean pP
    Boolean qQ
  }
  command <<<
    htop \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{true="-C" false="" cC} \
      ~{true="-F" false="" fF} \
      ~{true="-H" false="" hH} \
      ~{true="-L" false="" lL} \
      ~{true="-M" false="" mM} \
      ~{true="-P" false="" pP} \
      ~{true="-Q" false="" qQ}
  >>>
}