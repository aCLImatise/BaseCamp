version 1.0

task LocarnaMcc {
  input {
    String fF
    String pP
    Boolean aliAliFoldArgs
    Boolean assumeAssumeFastA
    Boolean manMan
    Boolean verboseVerbose
    Boolean quietQuiet
  }
  command <<<
    locarna_mcc \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="--alifold-args" false="" aliAliFoldArgs} \
      ~{true="--assume-fasta" false="" assumeAssumeFastA} \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}