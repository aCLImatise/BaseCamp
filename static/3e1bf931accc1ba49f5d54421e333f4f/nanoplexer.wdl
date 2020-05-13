version 1.0

task Nanoplexer {
  input {
    Boolean bB
    Boolean dD
    Boolean pP
    Boolean lL
    Boolean mM
    Boolean bB
    Boolean tT
    Boolean lL
    Boolean mM
    Boolean xX
    Boolean oO
    Boolean eE
    Boolean sS
    Boolean iI
    Boolean vV
    String? inputInputFastQ
  }
  command <<<
    nanoplexer \
      ~{inputInputFastQ} \
      ~{true="-b" false="" bB} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{true="-M" false="" mM} \
      ~{true="-B" false="" bB} \
      ~{true="-t" false="" tT} \
      ~{true="-L" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-x" false="" xX} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS} \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV}
  >>>
}