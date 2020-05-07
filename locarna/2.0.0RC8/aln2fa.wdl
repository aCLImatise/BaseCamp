version 1.0

task Aln2fa.pl {
  input {
    Boolean manMan
    Boolean verboseVerbose
    Boolean deDeGap
  }
  command <<<
    aln2fa.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--degap" false="" deDeGap}
  >>>
}