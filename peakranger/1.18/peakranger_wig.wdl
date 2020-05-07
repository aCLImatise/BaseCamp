version 1.0

task PeakrangerWig {
  input {
    Boolean dD
    String formatFormat
    Boolean oO
    Boolean sS
    Boolean zZ
    Boolean xX
    Boolean lL
    Boolean verboseVerbose
  }
  command <<<
    peakranger wig \
      ~{true="-d" false="" dD} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-z" false="" zZ} \
      ~{true="-x" false="" xX} \
      ~{true="-l" false="" lL} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}