version 1.0

task DaisySuiteTarget {
  input {
    Boolean coresCores
    Boolean keepKeepGoing
    Boolean dryDryRun
    Boolean printPrintShellCmds
  }
  command <<<
    DaisySuite target \
      ~{true="--cores" false="" coresCores} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--printshellcmds" false="" printPrintShellCmds}
  >>>
}