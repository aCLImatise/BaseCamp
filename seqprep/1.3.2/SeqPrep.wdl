version 1.0

task SeqPrep {
  input {
    Boolean qQ
    Boolean lL
    Boolean aA
    Boolean bB
    Boolean oO
    Boolean mM
    Boolean nN
    Boolean bB
    Boolean qQ
    Boolean tT
    Boolean eE
    Boolean zZ
    Boolean wW
    Boolean wW
    Boolean pP
    Boolean pP
    Boolean xX
    Boolean zZ
    Boolean xX
    Boolean oO
    Boolean mM
    Boolean nN
  }
  command <<<
    SeqPrep \
      ~{true="-q" false="" qQ} \
      ~{true="-L" false="" lL} \
      ~{true="-A" false="" aA} \
      ~{true="-B" false="" bB} \
      ~{true="-O" false="" oO} \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-b" false="" bB} \
      ~{true="-Q" false="" qQ} \
      ~{true="-t" false="" tT} \
      ~{true="-e" false="" eE} \
      ~{true="-Z" false="" zZ} \
      ~{true="-w" false="" wW} \
      ~{true="-W" false="" wW} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-X" false="" xX} \
      ~{true="-z" false="" zZ} \
      ~{true="-x" false="" xX} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN}
  >>>
}