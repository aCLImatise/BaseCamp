version 1.0

task MetametaTarget {
  input {
    Boolean useUseCondA
    Boolean coresCores
    Boolean keepKeepGoing
    Boolean dryDryRun
    Boolean printPrintShellCmds
    Boolean timestampTimestamp
  }
  command <<<
    metameta target \
      ~{true="--use-conda" false="" useUseCondA} \
      ~{true="--cores" false="" coresCores} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--printshellcmds" false="" printPrintShellCmds} \
      ~{true="--timestamp" false="" timestampTimestamp}
  >>>
}