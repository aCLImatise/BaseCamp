version 1.0

task PeakrangerWigpe {
  input {
    Boolean dD
    Boolean oO
    Boolean sS
    Boolean zZ
    Boolean xX
    Boolean lL
    Boolean verboseVerbose
  }
  command <<<
    peakranger wigpe \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-z" false="" zZ} \
      ~{true="-x" false="" xX} \
      ~{true="-l" false="" lL} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}