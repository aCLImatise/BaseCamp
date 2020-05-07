version 1.0

task PicoporeRename {
  input {
    String patternPattern
    String replacementReplacement
    Boolean yY
    Int threadsThreads
    String prefixPrefix
    Boolean noNoSkipRoot
    Int printPrintEvery
    String? inputInput
  }
  command <<<
    picopore-rename \
      ~{inputInput} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(replacementReplacement) then ("--replacement " +  '"' + replacementReplacement + '"') else ""} \
      ~{true="-y" false="" yY} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--no-skip-root" false="" noNoSkipRoot} \
      ~{if defined(printPrintEvery) then ("--print-every " +  '"' + printPrintEvery + '"') else ""}
  >>>
}