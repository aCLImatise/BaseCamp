version 1.0

task PeakrangerNr {
  input {
    Boolean dD
    Boolean cC
    String formatFormat
    Boolean lL
    Boolean verboseVerbose
  }
  command <<<
    peakranger nr \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}