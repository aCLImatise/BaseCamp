version 1.0

task ErrorCorrectionConnect {
  input {
    Boolean rR
    Boolean rR
    Boolean lL
    Boolean mM
    Boolean uU
    Boolean cC
    Boolean dD
    Boolean bB
    Boolean tT
    Boolean nN
    Boolean qQ
    Boolean xX
    Boolean xX
  }
  command <<<
    ErrorCorrection connect \
      ~{true="-r" false="" rR} \
      ~{true="-R" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-B" false="" bB} \
      ~{true="-t" false="" tT} \
      ~{true="-N" false="" nN} \
      ~{true="-q" false="" qQ} \
      ~{true="-x" false="" xX} \
      ~{true="-X" false="" xX}
  >>>
}