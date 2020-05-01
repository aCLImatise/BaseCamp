version 1.0

task AverageDot.pl {
  input {
    Boolean manMan
    Boolean verboseVerbose
    Boolean quietQuiet
    File alignmentAlignment
    File sequencesSequences
    File outfileOutfile
    Float thresholdThreshold
  }
  command <<<
    average-dot.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(sequencesSequences) then ("--sequences " +  '"' + sequencesSequences + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}