version 1.0

task TigmintCut {
  input {
    String fastFastAOut
    String bedBedOut
    String processesProcesses
    String windowWindow
    String spanningSpanning
    String trimTrim
    String? fastFastA
    String? bedBed
  }
  command <<<
    tigmint-cut \
      ~{fastFastA} \
      ~{if defined(fastFastAOut) then ("--fastaout " +  '"' + fastFastAOut + '"') else ""} \
      ~{if defined(bedBedOut) then ("--bedout " +  '"' + bedBedOut + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(spanningSpanning) then ("--spanning " +  '"' + spanningSpanning + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{bedBed}
  >>>
}