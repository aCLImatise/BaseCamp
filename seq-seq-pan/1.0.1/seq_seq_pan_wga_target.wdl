version 1.0

task SeqSeqPanWgaTarget {
  input {
    Boolean dryDryRun
    Boolean printPrintShellCmds
    Boolean timestampTimestamp
  }
  command <<<
    seq-seq-pan-wga target \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--printshellcmds" false="" printPrintShellCmds} \
      ~{true="--timestamp" false="" timestampTimestamp}
  >>>
}