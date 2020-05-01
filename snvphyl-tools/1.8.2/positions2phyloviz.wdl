version 1.0

task Positions2phyloviz.pl {
  input {
    Boolean inputInput
    Boolean outputOutputBase
    Boolean referenceReferenceName
    Boolean verboseVerbose
  }
  command <<<
    positions2phyloviz.pl \
      ~{true="--input" false="" inputInput} \
      ~{true="--output-base" false="" outputOutputBase} \
      ~{true="--reference-name" false="" referenceReferenceName} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}