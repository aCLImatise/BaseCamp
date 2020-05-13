version 1.0

task Positions2snvInvariantAlignment.pl {
  input {
    Boolean inputInput
    Boolean outputOutputDir
    Boolean formatFormat
    Boolean keepKeepAll
    Boolean mergeMergeAlignment
    Boolean referenceReferenceFile
    Boolean verboseVerbose
  }
  command <<<
    positions2snv_invariant_alignment.pl \
      ~{true="--input" false="" inputInput} \
      ~{true="--output-dir" false="" outputOutputDir} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--keep-all" false="" keepKeepAll} \
      ~{true="--merge-alignment" false="" mergeMergeAlignment} \
      ~{true="--reference-file" false="" referenceReferenceFile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}