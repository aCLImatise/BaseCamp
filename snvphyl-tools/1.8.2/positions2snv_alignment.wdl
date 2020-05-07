version 1.0

task Positions2snvAlignment.pl {
  input {
    Boolean inputInput
    Boolean outputOutput
    Boolean formatFormat
    Boolean keepKeepAll
    Boolean referenceReferenceName
    Boolean verboseVerbose
  }
  command <<<
    positions2snv_alignment.pl \
      ~{true="--input" false="" inputInput} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--keep-all" false="" keepKeepAll} \
      ~{true="--reference-name" false="" referenceReferenceName} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}