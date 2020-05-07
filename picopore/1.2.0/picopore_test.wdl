version 1.0

task PicoporeTest {
  input {
    String modeMode
    Boolean revertRevert
    Boolean noNoFastQ
    Boolean noNoSummary
    String manualManual
    Boolean yY
    Int threadsThreads
    String prefixPrefix
    Boolean noNoSkipRoot
    Int printPrintEvery
    String? inputInput
  }
  command <<<
    picopore-test \
      ~{inputInput} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--revert" false="" revertRevert} \
      ~{true="--no-fastq" false="" noNoFastQ} \
      ~{true="--no-summary" false="" noNoSummary} \
      ~{if defined(manualManual) then ("--manual " +  '"' + manualManual + '"') else ""} \
      ~{true="-y" false="" yY} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--no-skip-root" false="" noNoSkipRoot} \
      ~{if defined(printPrintEvery) then ("--print-every " +  '"' + printPrintEvery + '"') else ""}
  >>>
}